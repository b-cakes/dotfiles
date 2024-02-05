local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end


config.enable_tab_bar = false
config.font = wezterm.font_with_fallback {
  {
    family = 'Monaspace Neon',
    harfbuzz_features = {'ss01', 'ss02', 'ss03', 'ss05', 'ss06', 'ss07', 'ss08', 'calt'},
  },
}
config.underline_position = -2
config.enable_kitty_graphics = true
config.cursor_blink_rate = 390

-- config.color_scheme = "Tokyo Night"

-- Use 'ColorschemeDump wezterm' command to paste the current neovim colorscheme into the below format. 

config.colors = {
  foreground	=	"#c3c7cd",
  background	=	"#111624",
  selection_bg	=	"#c3c7cd",
  selection_fg	=	"#111624",
  cursor_fg	=	"#111624",
  cursor_bg	=	"#c3c7cd",
  ansi = {
    "#353b4c",
    "#f6b2ba",
    "#a6d5a8",
    "#d1c98c",
    "#94cff4",
    "#e3b5e3",
    "#87d8d3",
    "#c3c7cd",
  },
  brights = {
    "#353b4c",
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
