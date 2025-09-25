local wezterm = require 'wezterm'
local config = wezterm.config_builder()
local act = wezterm.action

config.initial_cols = 120
config.initial_rows = 50
config.font_size = 14
config.color_scheme = 'iTerm2 Pastel Dark Background'
config.enable_scroll_bar = true
config.window_decorations = "RESIZE"

config.keys = {
  {
    key = 'k',
    mods = 'SUPER',
    action = act.ClearScrollback 'ScrollbackAndViewport',
  },
  {
    key = 'd',
    mods = 'SUPER',
    action = act.SplitVertical,
  },
  {
    key = 'D',
    mods = 'SUPER',
    action = act.SplitHorizontal,
  },
}

config.window_frame = {
  font_size = 14,
}

return config

