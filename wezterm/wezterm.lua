local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end


config.enable_tab_bar = false
config.font = wezterm.font 'Fira Code'
config.underline_position = -2
config.enable_kitty_graphics = true
config.cursor_blink_rate = 390

-- Use 'ColorschemeDump wezterm' command to paste the current neovim colorscheme into the below format. 

config.colors = {
	foreground = "#c3c7cd",
	background = "#1a2331",
	selection_bg = "#c3c7cd",
	selection_fg = "#1a2331",
	cursor_fg = "#1a2331",
	cursor_bg = "#c3c7cd",
	ansi = {
		"#1a2331",
		"#f6b2ba",
		"#a6d5a8",
		"#d1c98c",
		"#94cff4",
		"#e3b5e3",
		"#87d8d3",
		"#c3c7cd",
	},
	brights = {
		"#1a2331",
		"#f6b2ba",
		"#a6d5a8",
		"#d1c98c",
		"#94cff4",
		"#e3b5e3",
		"#87d8d3",
		"#c3c7cd",
	}
}




return config
