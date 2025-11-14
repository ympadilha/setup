local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.disable_default_key_bindings = false
config.font = wezterm.font('JetBrainsMono Nerd Font')
config.font_size = 16.0
config.line_height = 1.1
config.color_scheme = 'Catppuccin Mocha'
config.hide_tab_bar_if_only_one_tab = true
config.scrollback_lines = 1000000

config.keys = {
  -- Split vertically with Cmd + D
  {
    key = 'd',
    mods = 'CMD',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  -- Split horizontally with Cmd + Shift + D
  {
    key = 'D',
    mods = 'CMD|SHIFT',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
}

return config
