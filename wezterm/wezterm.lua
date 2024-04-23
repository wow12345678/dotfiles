local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "3024 (dark) (terminal.sexy)"

config.default_prog = { "/usr/bin/zsh" }
config.font = wezterm.font("Hack Nerd Font Mono")

config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.dpi = 192
config.enable_wayland = false

--- change selection color
config.colors = {
	cursor_bg = "#b9bfca",
	cursor_border = "#b9bfca",
	cursor_fg = "#2e3440",
	selection_bg = "#3e4655",
	selection_fg = "#b9bfca",
	compose_cursor = "#f0d399",
}

--- change border offset
config.window_padding = {
	left = 5,
	right = 5,
	top = 5,
	bottom = 5,
}

--- Keybindings
config.keys = {

	--- Switch tabs changed to ALT + number
	{
		key = "1",
		mods = "ALT",
		action = wezterm.action({ ActivateTab = 0 }),
	},
	{
		key = "2",
		mods = "ALT",
		action = wezterm.action({ ActivateTab = 1 }),
	},
	{
		key = "3",
		mods = "ALT",
		action = wezterm.action({ ActivateTab = 2 }),
	},
	{
		key = "4",
		mods = "ALT",
		action = wezterm.action({ ActivateTab = 3 }),
	},
	{
		key = "5",
		mods = "ALT",
		action = wezterm.action({ ActivateTab = 4 }),
	},
	{
		key = "6",
		mods = "ALT",
		action = wezterm.action({ ActivateTab = 5 }),
	},
	{
		key = "7",
		mods = "ALT",
		action = wezterm.action({ ActivateTab = 6 }),
	},
	{
		key = "8",
		mods = "ALT",
		action = wezterm.action({ ActivateTab = 7 }),
	},
	{
		key = "9",
		mods = "ALT",
		action = wezterm.action({ ActivateTab = -1 }),
	},

	--- Change to CTRL
	{
		key = "t",
		mods = "ALT",
		action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }),
	},
	{
		key = "w",
		mods = "ALT",
		action = wezterm.action({ CloseCurrentTab = { confirm = true } }),
	},

	--- Change relative with ALT
	{
		key = "l",
		mods = "ALT",
		action = wezterm.action({ ActivateTabRelative = 1 }),
	},
	{
		key = "h",
		mods = "ALT",
		action = wezterm.action({ ActivateTabRelative = -1 }),
	},
	--- Change scroll
	{
		key = "d",
		mods = "ALT",
		action = wezterm.action({ ScrollByPage = 1 }),
	},
	{
		key = "u",
		mods = "ALT",
		action = wezterm.action({ ScrollByPage = -1 }),
	},
}
return config
