require('keybindings')
local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Tokyo Night Storm"
config.window_background_opacity = 0.8
config.font = wezterm.font("FiraCode Nerd Font")
config.enable_tab_bar = false

return config
