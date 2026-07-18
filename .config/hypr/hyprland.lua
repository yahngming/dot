local colors = require("colors")

hl.monitor({
	output = "",
	mode = "preferred",
	position = "auto",
	scale = "auto",
})

hl.on("hyprland.start", function()
	hl.exec_cmd("autoexec")
end)

hl.config({
	general = {
		gaps_in = 4,
		gaps_out = 8,
		border_size = 1,
		col = {
			inactive_border = colors.outline,
			active_border = colors.primary,
		},
		resize_on_border = true,
		layout = "scrolling",
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
			color_inactive = colors.outline,
			color = colors.shadow,
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

hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})

local mainMod = "SUPER"
for i = 1, 10 do
	local key = i % 10
	hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
	hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end
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
hl.bind(mainMod .. " + Equal", function() hl.dispatch(hl.dsp.layout("colresize +0.05")) end)
hl.bind(mainMod .. " + Minus", function() hl.dispatch(hl.dsp.layout("colresize -0.05")) end)
hl.bind(mainMod .. " + Backspace", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + Tab", hl.dsp.focus({ last = true }))
hl.bind(mainMod .. " + Tab", hl.dsp.window.bring_to_top())
hl.bind(mainMod .. " + Return", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
hl.bind(mainMod .. " + Up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + Down", hl.dsp.focus({ direction = "down" }))
hl.bind(mainMod .. " + Left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + Right", hl.dsp.focus({ direction = "right" }))
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
		tag = "center",
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
	idle_inhibit = always,
})

hl.window_rule({
	match = {
		class = "tag:bottomright",
	},
	move = { "monitor_w - window_w", "monitor_h - window_h" }
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
