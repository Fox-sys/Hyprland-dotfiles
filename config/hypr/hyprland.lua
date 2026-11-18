-- Hyprland configuration (Lua).
-- Migrated from the legacy hyprlang .conf format.
-- Docs: https://wiki.hypr.land/Configuring/Start/
--
-- The old *.conf files are kept as a backup. As long as this hyprland.lua
-- exists, Hyprland loads it INSTEAD of hyprland.conf. To roll back, rename or
-- delete this file and restart Hyprland.

-- Order mirrors the original `source =` order so that later modules keep
-- overriding earlier ones (e.g. the misc {} block).
require("hyprland.env")
require("hyprland.autostart")
require("hyprland.keybindings")
require("hyprland.animations")
require("hyprland.general")
require("hyprland.rules")
