local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end


local function dark_schemes()
  local schemes = wezterm.color.get_builtin_schemes()
  local dark = {}
  for name, scheme in pairs(schemes) do
    -- parse into a color object
    local bg = wezterm.color.parse(scheme.background)
    -- and extract HSLA information
    local h, s, l, a = bg:hsla()

    -- `l` is the "lightness" of the color where 0 is darkest
    -- and 1 is lightest.
    if l < 0.4 then
      table.insert(dark, name)
    end
  end

  table.sort(dark)
  return dark
end

local dark = dark_schemes()

wezterm.on('window-config-reloaded', function(window, pane)
  -- If there are no overrides, this is our first time seeing
  -- this window, so we can pick a random scheme.
  if not window:get_config_overrides() then
    -- Pick a random scheme name

    local scheme = dark[math.random(#dark)]
    window:set_config_overrides {
      color_scheme = scheme,
    }
  end
end)

config.enable_tab_bar = false
config.font = wezterm.font 'Fira Code'
config.underline_position = -2
config.enable_kitty_graphics = true
config.cursor_blink_rate = 390

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
