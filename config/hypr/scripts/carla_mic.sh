#!/usr/bin/env bash

# --- Запуск pipewire и wireplumber ---
systemctl --user start pipewire pipewire-pulse wireplumber
sleep 2  # даём PipeWire время полностью подняться

# --- Создаём виртуальный sink и source (VirtualMic) ---
# Проверяем, есть ли уже source с именем VirtualMic
SOURCE_EXISTS=$(pactl list short sources | grep -w "vmic")
if [ -z "$SOURCE_EXISTS" ]; then
    # создаём sink
    pactl load-module module-null-sink sink_name=vmic_sink sink_properties=device.description="VirtualMic"
    sleep 0.2
    # создаём remap-source от monitor, чтобы был полноценный микрофон
    pactl load-module module-remap-source master=vmic_sink.monitor source_name=vmic source_properties=device.description="VirtualMic" channels=2
fi

# --- Ставим VirtualMic дефолтным микрофоном ---
VIRTUAL_SOURCE=$(pactl list short sources | awk '/vmic$/ {print $2}')
if [ -n "$VIRTUAL_SOURCE" ]; then
    pactl set-default-source "$VIRTUAL_SOURCE"
fi

# --- Запуск Carla с сохранённой цепочкой плагинов ---
CARLA_SESSION="$HOME/.config/carla/sound.carxp"
pw-jack carla "$CARLA_SESSION" &

