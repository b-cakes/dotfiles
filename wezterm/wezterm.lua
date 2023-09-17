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

return config
