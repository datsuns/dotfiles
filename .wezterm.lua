-- https://wezfurlong.org/wezterm/config/launch.html

-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.scrollback_lines = 3500

-- This is where you actually apply your config choices

local MyFont = wezterm.font { family = 'MyricaM M', weight = 'Bold' }
config.font         = MyFont
config.font_size    = 18.0
config.window_frame = {
  font      = MyFont,
  font_size = 14.0,
}

local MyColoScheme = 'Afterglow'
config.color_scheme = MyColoScheme
config.color_schemes = {
  [MyColoScheme] = {
    background = 'black',
    foreground = 'white',
    compose_cursor = 'magenta',
  },
}

-- https://wezterm.org/config/lua/config/index.html
config.adjust_window_size_when_changing_font_size = false
config.audible_bell = 'Disabled'
config.bold_brightens_ansi_colors = 'BrightAndBold'
config.enable_scroll_bar = true
config.enable_tab_bar    = true
config.hide_tab_bar_if_only_one_tab = false
config.tab_bar_at_bottom = false
config.tab_max_width     = 16
config.use_fancy_tab_bar = true

config.default_prog = { 'bash.exe', '--login',  '-i', '-l' }
config.default_cwd = "~"

config.launch_menu = {
  {
    args = { 'top' },
  },
  {
    label = 'Bash',
    args = { 'bash', '--login',  '-i', '-l' },
    cwd = '~'
  },
  {
    label = 'WSL',
    args = { 'wsl.exe', '-d', 'Ubuntu-22.04', '--cd', '~' },
  },
}

config.keys = {
  -- Turn off the default CMD-m Hide action, allowing CMD-m to
  -- be potentially recognized and handled by the tab
  {
    key = 'F1',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.ShowLauncher,
  },
}

-- and finally, return the configuration to wezterm
return config
