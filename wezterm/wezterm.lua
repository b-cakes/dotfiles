local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.color_scheme = "rose-pine"
config.enable_tab_bar = false
config.font = wezterm.font 'Fira Code'
config.underline_position = -2
config.enable_kitty_graphics = true

-- This is from my "tokyo-ish" colorscheme in nvim/colors/tokyo-ish.lua file.
	-- g.terminal_color_0 = "#1a2331"
	-- g.terminal_color_1 = "#f6b2ba"
	-- g.terminal_color_2 = "#a6d5a8"
	-- g.terminal_color_3 = "#d1c98c"
	-- g.terminal_color_4 = "#94cff4"
	-- g.terminal_color_5 = "#e3b5e3"
	-- g.terminal_color_6 = "#87d8d3"
	-- g.terminal_color_7 = "#c3c7cd"
	-- g.terminal_color_8 = "#1a2331"
	-- g.terminal_color_9 = "#f6b2ba"
	-- g.terminal_color_10 = "#a6d5a8"
	-- g.terminal_color_11 = "#d1c98c"
	-- g.terminal_color_12 = "#94cff4"
	-- g.terminal_color_13 = "#e3b5e3"
	-- g.terminal_color_14 = "#87d8d3"
	-- g.terminal_color_15 = "#c3c7cd"

return config
