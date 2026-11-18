-- #################
-- ### AUTOSTART ###
-- #################
-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

hl.on("hyprland.start", function()
    hl.exec_cmd("wlr-randr --output DP-1 --off && sleep 3 && wlr-randr --output DP-1 --on --pos 0,140")
    hl.exec_cmd("waybar")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("wl-paste --type text --watch cliphist store")  -- Stores only text data
    hl.exec_cmd("wl-paste --type image --watch cliphist store") -- Stores only image data
    hl.exec_cmd("udiskie")
    hl.exec_cmd("Telegram")
    hl.exec_cmd("firefox")
    hl.exec_cmd("swaync")
    hl.exec_cmd("hyprctl setcursor ~/.local/share/icons/Dracula-cursors/index.theme 24")
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
    hl.exec_cmd("xhost +SI:localuser:root")
    hl.exec_cmd("$HOME/.config/hypr/scripts/carla_mic.sh")
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=Hyprland")
    hl.exec_cmd("systemctl --user start graphical-session.target")
end)
