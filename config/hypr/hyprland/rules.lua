-- #####################
-- ### WINDOW RULES  ###
-- #####################
-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/

-- Chrome & Firefox -> workspace 8, float, sized/positioned
-- NOTE: original had two separate match:class lines; a Lua match table can hold
-- only one `class` key, so both browsers are combined into one alternation regex.
hl.window_rule({
    name  = "chrome-firefox-workspace8",
    match = { class = "^(Google-chrome|firefox)$" },
    workspace = 8,
    float     = true,
    size      = "monitor_w*0.765 monitor_h*0.959",
    move      = "monitor_w*0.011 monitor_h*0.02",
})

hl.window_rule({
    name  = "gaming-crosshair",
    match = { class = "^[Cc]rosshair$" },
    workspace = 4,
    float     = true,
    move      = "monitor_w*0.48 monitor_h*0.505",
})

hl.window_rule({
    name  = "carla-work7",
    match = { class = "^carla$" },
    workspace = 7,
})

-- Telegram -> workspace 8, float, sized/positioned
hl.window_rule({
    name  = "telegram-float-8",
    match = { class = "^org.telegram.desktop$" },
    workspace = 8,
    float     = true,
    size      = "monitor_w*0.206 monitor_h*0.959",
    move      = "monitor_w*0.783 monitor_h*0.020",
})

-- QjackCtl default -> float
hl.window_rule({
    name  = "qjackctl-float",
    match = { class = "^QjackCtl$", title = "^\\(default\\) Active$" },
    float = true,
})

hl.window_rule({
    name  = "pavucontrol-workflow",
    match = { class = "^org.pulseaudio.pavucontrol$" },
    monitor = "DP-1",
    float   = true,
    size    = "monitor_w*0.369 monitor_h*0.438",
    move    = "monitor_w*0.513 monitor_h*0.048",
})

-- VS Code -> workspace 3
hl.window_rule({
    name  = "code-oss-work3",
    match = { class = "^code-oss$" },
    workspace = 3,
})

-- Alacritty -> workspace 1
hl.window_rule({
    name  = "alacritty-work1",
    match = { class = "^Alacritty$" },
    workspace = 1,
})

-- Feh -> float + center
hl.window_rule({
    name  = "feh-float-center",
    match = { class = "^feh$" },
    float  = true,
    center = true,
})

-- Thunar -> workspace 2
hl.window_rule({
    name  = "Thunar-work2-uppercase",
    match = { class = "^Thunar$" },
    workspace = 2,
})
hl.window_rule({
    name  = "Thunar-work2-lowercase",
    match = { class = "^thunar$" },
    workspace = 2,
})

hl.window_rule({
    name  = "FileRoller-work2",
    match = { class = "^org.gnome.FileRoller$" },
    workspace = 2,
})

-- mpv -> float + center
hl.window_rule({
    name  = "mpv-float-center",
    match = { class = "^mpv$" },
    float  = true,
    center = true,
})

-- Lutris, Steam & Wine-exe -> workspace 4
hl.window_rule({
    name  = "lutris-steam-work4",
    match = { class = "^net.lutris.Lutris$" },
    workspace = 4,
})
hl.window_rule({
    name  = "steam-work4",
    match = { class = "^steam$" },
    workspace = 4,
})
hl.window_rule({
    name  = "steam-app-work4",
    match = { class = "^steam_app_\\d+$" },
    workspace = 4,
})
hl.window_rule({
    name  = "wine-exe-work4",
    match = { class = "^[\\w_]+\\.exe$" },
    workspace = 4,
})

-- JetBrains -> workspace 3
hl.window_rule({
    name  = "jetbrains-work3",
    match = { class = "^jetbrains-.*$" },
    workspace = 3,
})

-- ONLYOFFICE + Discord -> workspace 5
hl.window_rule({
    name  = "onlyoffice-work5",
    match = { class = "^ONLYOFFICE Desktop Editors$" },
    workspace = 5,
})
hl.window_rule({
    name  = "discord-work5",
    match = { class = "^discord$" },
    workspace = 5,
})

-- Telegram Media Viewer -> fullscreen
hl.window_rule({
    name  = "telegram-media-viewer-fs",
    match = { class = "^org.telegram.desktop$", initial_title = "^Media\\s+viewer$" },
    fullscreen = true,
    size = "monitor_w monitor_h",
    move = "0 0",
})

-- Suppress maximize requests from all apps
hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})
