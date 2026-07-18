require("colors.lua")

hl.monitor({
    output = "",
    mode = "preferred",
    position = "auto",
    scale = "auto",
})

hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1.0 } } })
hl.curve("quick", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })
hl.animation({
    leaf = "global",
    enabled = true,
    speed = 10,
    bezier = "default",
})
hl.animation({
    leaf = "border",
    enabled = true,
    speed = 5.39,
    bezier = "easeOutQuint",
})
hl.animation({
    leaf = "windows",
    enabled = true,
    speed = 4.79,
    bezier = "easeOutQuint",
})
hl.animation({
    leaf = "windowsIn",
    enabled = true,
    speed = 4.1,
    bezier = "easeOutQuint",
    style = "popin 87%",
})
hl.animation({
    leaf = "windowsOut",
    enabled = true,
    speed = 1.49,
    bezier = "linear",
    style = "popin 87%",
})
hl.animation({
    leaf = "layers",
    enabled = true,
    speed = 3.81,
    bezier = "easeOutQuint",
})
hl.animation({
    leaf = "layersIn",
    enabled = true,
    speed = 4,
    bezier = "easeOutQuint",
    style = "fade",
})
hl.animation({
    leaf = "layersOut",
    enabled = true,
    speed = 1.5,
    bezier = "linear",
    style = "fade",
})
hl.animation({
    leaf = "fade",
    enabled = true,
    speed = 3.03,
    bezier = "quick",
})
hl.animation({
    leaf = "fadeIn",
    enabled = true,
    speed = 1.73,
    bezier = "almostLinear",
})
hl.animation({
    leaf = "fadeOut",
    enabled = true,
    speed = 1.46,
    bezier = "almostLinear",
})
hl.animation({
    leaf = "fadeLayersIn",
    enabled = true,
    speed = 1.79,
    bezier = "almostLinear",
})
hl.animation({
    leaf = "fadeLayersOut",
    enabled = true,
    speed = 1.39,
    bezier = "almostLinear",
})
hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 1.94,
    bezier = "almostLinear",
    style = "slide",
})
hl.animation({
    leaf = "workspacesIn",
    enabled = true,
    speed = 1.21,
    bezier = "almostLinear",
    style = "slide",
})
hl.animation({
    leaf = "workspacesOut",
    enabled = true,
    speed = 1.94,
    bezier = "almostLinear",
    style = "slide",
})

local mainMod = "SUPER"
hl.bind(mainMod .. " + A", hl.dsp.exec_cmd("ai"))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("browser"))
hl.bind(mainMod .. " + C", hl.dsp.exec_cmd("calculator"))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("transmenu"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("editor"))
hl.bind(mainMod .. " + F", hl.dsp.exec_cmd("files"))
hl.bind(mainMod .. " + G", hl.dsp.exec_cmd("game"))
hl.bind(mainMod .. " + I", hl.dsp.exec_cmd("settings"))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("powermenu"))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("mail"))
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("news"))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd("launcher"))
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd("screenshot"))
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd("topper"))
hl.bind(mainMod .. " + U", hl.dsp.exec_cmd("music"))
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("clipmenu"))
hl.bind(mainMod .. " + Z", hl.dsp.exec_cmd("terminal"))
hl.bind(mainMod .. " + Delete", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + Delete", hl.dsp.window.pin())
hl.bind(mainMod .. " + Minus", hl.dsp.exec_cmd("volume down"))
hl.bind(mainMod .. " + Equal", hl.dsp.exec_cmd("volume up"))
hl.bind(mainMod .. " + Backspace", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + Tab", hl.dsp.focus({ last = true }))
hl.bind(mainMod .. " + Tab", hl.dsp.window.bring_to_top())
hl.bind(mainMod .. " + Return", hl.dsp.window.fullscreen({ mode = "", action = "toggle" }))
hl.bind(mainMod .. " + Up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + Down", hl.dsp.focus({ direction = "down" }))
hl.bind(mainMod .. " + Left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + Right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + 1", hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + 2", hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. " + 3", hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. " + 4", hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. " + 5", hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. " + 6", hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. " + 7", hl.dsp.focus({ workspace = 7 }))
hl.bind(mainMod .. " + 8", hl.dsp.focus({ workspace = 8 }))
hl.bind(mainMod .. " + 9", hl.dsp.focus({ workspace = 9 }))
hl.bind(mainMod .. " + 0", hl.dsp.focus({ workspace = 10 }))
hl.bind(mainMod .. " + SHIFT + 1", hl.dsp.window.move({ workspace = 1 }))
hl.bind(mainMod .. " + SHIFT + 2", hl.dsp.window.move({ workspace = 2 }))
hl.bind(mainMod .. " + SHIFT + 3", hl.dsp.window.move({ workspace = 3 }))
hl.bind(mainMod .. " + SHIFT + 4", hl.dsp.window.move({ workspace = 4 }))
hl.bind(mainMod .. " + SHIFT + 5", hl.dsp.window.move({ workspace = 5 }))
hl.bind(mainMod .. " + SHIFT + 6", hl.dsp.window.move({ workspace = 6 }))
hl.bind(mainMod .. " + SHIFT + 7", hl.dsp.window.move({ workspace = 7 }))
hl.bind(mainMod .. " + SHIFT + 8", hl.dsp.window.move({ workspace = 8 }))
hl.bind(mainMod .. " + SHIFT + 9", hl.dsp.window.move({ workspace = 9 }))
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag())
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize())
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("volume toggle"), { locked = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("volume toggle @DEFAULT_SOURCE@"), { locked = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("volume down"), { locked = true, repeating = true })
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("volume up"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl s 5%-"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl s 5%+"), { locked = true, repeating = true })
hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace",
})
hl.gesture({
    fingers = 3,
    direction = "vertical",
    action = "fullscreen",
})

hl.window_rule({
    match = {
        class = "title:^(Picture.?in.?[Pp]icture)$",
    },
    tag = "+bottomright",
})

hl.window_rule({
    match = {
        class = "class:^(center|.*config.*|rquickshare|xdg-desktop-portal-gtk)$",
    },
    tag = "+center",
})

hl.window_rule({
    match = {
        class = "title:^(center)$",
    },
    tag = "+center",
})

hl.window_rule({
    match = {
        class = "class:^(fullscreen|steam_app_.*)$",
    },
    tag = "+fullscreen",
})

hl.window_rule({
    match = {
        class = "title:^(fullscreen)$",
    },
    tag = "+fullscreen",
})

hl.window_rule({
    match = {
        class = "class:^(steam_app_.*)$",
    },
    tag = "+idleinhibit",
})

hl.window_rule({
    match = {
        class = "class:^(blender|Darktable|krita|mpv|.*freecad.*|resolve)$",
    },
    tag = "+opaque",
})

hl.window_rule({
    match = {
        class = "title:^(.*YouTube -.*|Picture.?in.?[Pp]icture)$",
    },
    tag = "+opaque",
})

hl.window_rule({
    match = {
        class = "class:^(KeePassXC)$",
    },
    tag = "+secret",
})

hl.window_rule({
    match = {
        class = "tag:center",
    },
    center = true,
    float = true,
})

hl.window_rule({
    match = {
        class = "tag:bottomright",
    },
    float = true,
})

hl.window_rule({
    match = {
        class = "tag:fullscreen",
    },
    fullscreen = true,
})

hl.window_rule({
    match = {
        class = "tag:idleinhibit",
    },
    -- TODO: manual review — unmapped window rule action: "idleinhibit always"
})

hl.window_rule({
    match = {
        class = "tag:bottomright",
    },
    -- TODO: manual review — unmapped window rule action: "keepaspectratio"
    move = "100%-w-25 100%-w-50",
})

hl.window_rule({
    no_focus = true,
    -- TODO: manual review — unmapped window rule action: "class:^$"
    -- TODO: manual review — unmapped window rule action: "title:^$"
    -- TODO: manual review — unmapped window rule action: "xwayland:1"
    -- TODO: manual review — unmapped window rule action: "floating:1"
    -- TODO: manual review — unmapped window rule action: "fullscreen:0"
    -- TODO: manual review — unmapped window rule action: "pinned:0"
})

hl.window_rule({
    match = {
        class = "tag:secret",
    },
    no_screen_share = true,
})

hl.window_rule({
    match = {
        class = "tag:opaque",
    },
    opacity = "1.0 override",
})

hl.window_rule({
    match = {
        class = "tag:bottomright",
    },
    pin = true,
})

hl.window_rule({
    match = {
        class = "class:.*",
    },
    suppress_event = "maximize",
})

hl.config({
    general = {
        border_size = 1,
        gaps_in = 4,
        gaps_out = 8,
        col = {
            inactive_border = outline,
            active_border = primary,
        },
        resize_on_border = true,
    },
    dwindle = {
        force_split = 1,
        preserve_split = true,
        default_split_ratio = 1.1,
    },
    master = {
        new_status = "master",
    },
    decoration = {
        rounding = 4,
        active_opacity = 0.9,
        inactive_opacity = 0.7,
        fullscreen_opacity = 1.0,
        blur = {
            size = 8,
            passes = 2,
        },
        shadow = {
            range = 16,
            render_power = 2,
            color_inactive = outline,
            color = shadow,
        },
    },
    input = {
        kb_layout = "us",
        kb_options = "ctrl:nocaps, shift:both_capslock",
        numlock_by_default = true,
        repeat_delay = 500,
        repeat_rate = 30,
        mouse_refocus = false,
        touchpad = {
            natural_scroll = true,
            drag_lock = true,
        },
    },
    misc = {
        mouse_move_enables_dpms = true,
        key_press_enables_dpms = true,
        enable_anr_dialog = false,
    },
    cursor = {
        inactive_timeout = 5,
        no_warps = true,
    },
    ecosystem = {
        no_update_news = true,
        no_donation_nag = true,
    },
})

hl.on("hyprland.start", function()
    hl.exec_cmd("autoexec")
end)
