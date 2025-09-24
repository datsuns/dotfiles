-- https://wezfurlong.org/wezterm/config/launch.html

-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.scrollback_lines = 3500

-- This is where you actually apply your config choices

-- local MyFont = wezterm.font { family = 'MyricaM M', weight = 'Bold' }
local MyFont = wezterm.font { family = 'MyricaM M' }
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
    selection_bg = '#dd4444',
  },
}

-- https://wezterm.org/config/lua/config/index.html
config.adjust_window_size_when_changing_font_size = false
config.audible_bell                 = 'Disabled'
config.bold_brightens_ansi_colors   = 'BrightAndBold'
config.default_cursor_style         = 'SteadyBlock'
config.dpi                          = 120
config.enable_scroll_bar            = true
config.enable_tab_bar               = true
config.hide_tab_bar_if_only_one_tab = false
config.show_tab_index_in_tab_bar    = false
-- config.skip_close_confirmation_for_processes_named = {
--   'bash',
--   'sh',
--   'tmux',
--   'cmd.exe',
--   'pwsh.exe',
--   'powershell.exe',
-- }
config.tab_bar_at_bottom            = false
config.tab_max_width                = 10
config.use_fancy_tab_bar            = true
config.window_close_confirmation    = 'NeverPrompt'
config.window_decorations           = 'TITLE | RESIZE'
-- config.window_frame = {
-- }

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
    key = 'F12',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.ShowLauncher,
  },
  {
    key = 'F1',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.SpawnCommandInNewTab {
      args = { 'bash', '--login',  '-i', '-l' },
      cwd = '~'
    }
  },
  {
    key = 'F2',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.SpawnCommandInNewTab {
      args = { 'wsl.exe', '-d', 'Ubuntu-22.04', '--cd', '~' },
    }
  },
  {
    key = 'F3',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.SpawnCommandInNewTab {
      args = { 'cmd.exe' },
    }
  },
    {
    key = 'F4',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.SpawnCommandInNewTab {
      args = { 'powershell.exe' },
    }
  },
  {
    key = 'n',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.SpawnTab 'CurrentPaneDomain',
  },
  {
    key = 'LeftArrow',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.ActivateTabRelative(-1),
  },
  {
    key = 'RightArrow',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.ActivateTabRelative(1),
  },
}

-- and finally, return the configuration to wezterm
return config
