local wezterm = require("wezterm")
local act = wezterm.action

return {
    color_scheme = "Tokyo Night Storm",
    font = wezterm.font("FiraCode Nerd Font"),
    window_background_opacity = 0.8,
    --window_close_confimation = "Never",
    enable_tab_bar = false,

    disable_default_key_bindings = true,
    --disable_default_mouse_bindings = true,
    --  INFO: This configuration sucks ass
    --
    -- leader = { key = 'Alt', timeout_milliseconds = 2000},
    -- keys = {
    --     --{ key = 'Enter', mods = 'ALT', action = act.ToggleFullScreen },
    --     {
    --         key = 't',
    --         mods = 'LEADER',
    --         action = act.ActivateKeyTable {
    --             name = 'terminal',
    --             one_shot = false,
    --         },
    --     },
    --
    --     { key = '+', mods = 'CTRL', action = act.IncreaseFontSize },
    --     { key = '-', mods = 'CTRL', action = act.DecreaseFontSize },
    --
    --     { key = '1', mods = 'CTRL', action = act.ActivateTab(0) },
    --     { key = '2', mods = 'CTRL', action = act.ActivateTab(1) },
    --     { key = '3', mods = 'CTRL', action = act.ActivateTab(2) },
    --     { key = '4', mods = 'CTRL', action = act.ActivateTab(3) },
    --     { key = '5', mods = 'CTRL', action = act.ActivateTab(4) },
    --     { key = '6', mods = 'CTRL', action = act.ActivateTab(5) },
    --     { key = '7', mods = 'CTRL', action = act.ActivateTab(6) },
    --     { key = '8', mods = 'CTRL', action = act.ActivateTab(7) },
    --
    --     { key = 'c', mods = 'CTRL', action = act.CopyTo 'Clipboard' },
    --     { key = 'R', mods = 'CTRL', action = act.ReloadConfiguration },
    --     { key = 'Z', mods = 'CTRL', action = act.TogglePaneZoomState },
    -- },
    --
    -- key_tables = {
    --     terminal = {
    --         { key = 'h', action = act.SplitHorizontal{ domain =  'CurrentPaneDomain' } },
    --         { key = 'v', action = act.SplitVertical{ domain =  'CurrentPaneDomain' } },
    --         { key = 'x', action = act.CloseCurrentPane{ confirm = false} },
    --     }
    -- }
}
