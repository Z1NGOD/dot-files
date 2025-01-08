local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font_with_fallback({
	"GoMono Nerd Font",
	"SF Mono",
})

config.max_fps = 120

config.font_size = 18

config.color_scheme = "Catppuccin Frappe"

config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
config.tab_max_width = 24
config.tab_and_split_indices_are_zero_based = false
config.use_fancy_tab_bar = false
config.window_decorations = "RESIZE"
config.inactive_pane_hsb = {
	saturation = 0.8,
	brightness = 0.6,
}

config.cursor_blink_rate = 0

config.enable_scroll_bar = false

config.hide_mouse_cursor_when_typing = true

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.keys = {
	{ key = "Enter", mods = "CMD", action = "TogglePaneZoomState" },
	{ key = "\\", mods = "CMD", action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }) },
	{ key = "|", mods = "CMD", action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }) },
	{ key = "h", mods = "CMD", action = wezterm.action({ ActivatePaneDirection = "Left" }) },
	{ key = "l", mods = "CMD", action = wezterm.action({ ActivatePaneDirection = "Right" }) },
	{ key = "Tab", mods = "ALT", action = wezterm.action.ShowTabNavigator },
	{ key = "k", mods = "CMD", action = wezterm.action({ ActivatePaneDirection = "Up" }) },
	{ key = "j", mods = "CMD", action = wezterm.action({ ActivatePaneDirection = "Down" }) },
	{ key = "q", mods = "CMD", action = wezterm.action({ CloseCurrentPane = { confirm = false } }) },
	{ key = "]", mods = "CMD", action = wezterm.action({ ActivateTabRelative = 1 }) },
	{ key = "[", mods = "CMD", action = wezterm.action({ ActivateTabRelative = -1 }) },
	{ key = "1", mods = "CMD", action = wezterm.action({ ActivateTab = 0 }) },
	{ key = "2", mods = "CMD", action = wezterm.action({ ActivateTab = 1 }) },
	{ key = "3", mods = "CMD", action = wezterm.action({ ActivateTab = 2 }) },
	{ key = "4", mods = "CMD", action = wezterm.action({ ActivateTab = 3 }) },
	{ key = "5", mods = "CMD", action = wezterm.action({ ActivateTab = 4 }) },
	{ key = "6", mods = "CMD", action = wezterm.action({ ActivateTab = 5 }) },
	{ key = "7", mods = "CMD", action = wezterm.action({ ActivateTab = 6 }) },
	{ key = "8", mods = "CMD", action = wezterm.action({ ActivateTab = 7 }) },
	{ key = "9", mods = "CMD", action = wezterm.action({ ActivateTab = 8 }) },
	{ key = "0", mods = "CMD", action = wezterm.action({ ActivateTab = 9 }) },
}

return config
