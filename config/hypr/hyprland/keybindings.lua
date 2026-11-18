-- ####################
-- ### KEYBINDINGS  ###
-- ####################
-- See https://wiki.hypr.land/Configuring/Basics/Binds/

local mainMod     = "SUPER" -- Sets "SUPER" key as main modifier
local terminal    = "alacritty"
local fileManager = "thunar"
local menu        = "wofi"

-- Launchers
hl.bind(mainMod .. " + RETURN",    hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + SHIFT + 1", hl.dsp.exec_cmd("firefox"))
hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.exec_cmd("Telegram"))
hl.bind(mainMod .. " + SHIFT + A", hl.dsp.exec_cmd("$HOME/pycharm-2025.2.6/bin/pycharm.sh"))
hl.bind(mainMod .. " + SHIFT + Z", hl.dsp.exec_cmd("pavucontrol"))
hl.bind(mainMod .. " + SHIFT + 2", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd("code"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("hyprpicker | wl-copy"))
hl.bind(mainMod .. " + SHIFT + X", hl.dsp.exec_cmd("lutris"))
hl.bind(mainMod .. " + SHIFT + 3", hl.dsp.exec_cmd("obs"))
hl.bind(mainMod .. " + SHIFT + E", hl.dsp.exec_cmd("GTK_THEME=Dracula-pink-accent fragments"))
hl.bind(mainMod .. " + SHIFT + D", hl.dsp.exec_cmd("steam"))
hl.bind(mainMod .. " + SHIFT + C", hl.dsp.exec_cmd("discord"))
hl.bind(mainMod .. " + SHIFT + 4", hl.dsp.exec_cmd("onlyoffice-desktopeditors"))
hl.bind(mainMod .. " + SHIFT + R", hl.dsp.exec_cmd("$HOME/idea-IU-251.25410.129/bin/idea.sh"))
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.exec_cmd("firefox"))

-- Screenshots
hl.bind("PRINT",         hl.dsp.exec_cmd("hyprshot -m output"))
hl.bind("SHIFT + PRINT", hl.dsp.exec_cmd("hyprshot -m region"))

-- Window / session management
hl.bind(mainMod .. " + C",      hl.dsp.window.close())
hl.bind(mainMod .. " + ESCAPE", hl.dsp.exec_cmd("systemctl --user stop graphical-session.target && hyprctl dispatch exit"))
hl.bind(mainMod .. " + SPACE",  hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + R",      hl.dsp.exec_cmd(menu .. " --show run"))
hl.bind(mainMod .. " + D",      hl.dsp.exec_cmd(menu .. " --show drun"))
hl.bind(mainMod .. " + T",      hl.dsp.window.pseudo()) -- dwindle
hl.bind(mainMod .. " + P",      hl.dsp.exec_cmd("pkill -SIGUSR1 waybar"))
hl.bind(mainMod .. " + F",      hl.dsp.window.fullscreen())

-- Move active window within the workspace
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "down" }))

-- Resize active window (hold to resize smoothly)
hl.bind(mainMod .. " + CTRL + H", hl.dsp.window.resize({ x = -40, y = 0 }),  { repeating = true })
hl.bind(mainMod .. " + CTRL + L", hl.dsp.window.resize({ x = 40,  y = 0 }),  { repeating = true })
hl.bind(mainMod .. " + CTRL + K", hl.dsp.window.resize({ x = 0,   y = -40 }), { repeating = true })
hl.bind(mainMod .. " + CTRL + J", hl.dsp.window.resize({ x = 0,   y = 40 }),  { repeating = true })

hl.bind(mainMod .. " + SHIFT + P", hl.dsp.exec_cmd("pkill -SIGUSR2 waybar"))
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.exec_cmd("pkill -SIGUSR2 swaync"))

-- Clipboard / calc
hl.bind(mainMod .. " + V",        hl.dsp.exec_cmd("cliphist list | wofi --dmenu | cliphist decode | wl-copy"))
hl.bind(mainMod .. " + CTRL + V", hl.dsp.exec_cmd("cliphist wipe"))
hl.bind(mainMod .. " + CTRL + C", hl.dsp.exec_cmd("$HOME/.config/hypr/scripts/wofi_calc"))

-- Media / brightness keys
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ +2%"), { repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("pactl set-sink-volume @DEFAULT_SINK@ -2%"), { repeating = true })
hl.bind("SHIFT + F2",           hl.dsp.exec_cmd("brightnessctl set 5%+"),                     { repeating = true })
hl.bind("SHIFT + F1",           hl.dsp.exec_cmd("brightnessctl set 5%-"),                     { repeating = true })

-- Move focus
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
end

-- Move active window to relative workspace
hl.bind(mainMod .. " + SHIFT + left",  hl.dsp.window.move({ workspace = "-1" }))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.move({ workspace = "+1" }))

-- Switch to relative workspace (repeatable)
hl.bind(mainMod .. " + left",  hl.dsp.focus({ workspace = "-1" }), { repeating = true })
hl.bind(mainMod .. " + right", hl.dsp.focus({ workspace = "+1" }), { repeating = true })

-- Scroll through workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
