local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end


config.enable_tab_bar = false
config.font = wezterm.font_with_fallback {
  {
    family = 'Monaspace Neon',
    harfbuzz_features = {'calt', 'ss01', 'ss02', 'ss03', 'ss04', 'ss05', 'ss06', 'ss07', 'ss08', 'ss09', 'liga'},
  },

  -- {
  --   family = 'Fira Code',
  --   harfbuzz_features = {'zero', 'ss01'},
  -- },
}

config.underline_position = -2
config.enable_kitty_graphics = true
config.cursor_blink_rate = 390


-- Use 'ColorschemeDump wezterm' command to paste the current neovim colorscheme into the below format. 
-- config.colors = {
--     foreground	=	"#c5c6cd",
--     background	=	"#202131",
--     selection_bg	=	"#c5c6cd",
--     selection_fg	=	"#202131",
--     cursor_fg	=	"#202131",
--     cursor_bg	=	"#c5c6cd",
--     ansi = {
--      "#8c8c92",
--      "#92d8be",
--      "#f5b5a5",
--      "#e3c18b",
--      "#d1baf2",
--      "#87d5e7",
--      "#efb2cf",
--      "#c5c6cd",
--     },
--     brights = {
--      "#8c8c92",
--      "#92d8be",
--      "#f5b5a5",
--      "#e3c18b",
--      "#d1baf2",
--      "#87d5e7",
--      "#efb2cf",
--      "#c5c6cd",
--     }
--   }

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
