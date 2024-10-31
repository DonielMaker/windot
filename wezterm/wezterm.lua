local wezterm = require("wezterm")
local act = wezterm.action

------------ Show if Leader is Active ----------
wezterm.on('update-status', function (window, _)
    local prefix = ""

    if window:leader_is_active() then
        prefix = wezterm.nerdfonts.cod_compass
    end

    window:set_left_status(
        wezterm.format {
            { Background = { Color = '#292e42'}},
            { Text = prefix},
            { Foreground = { Color = '#ffffff'}},
        }
    )
end)

return {
    ------------ Decoration ---------------
    color_scheme = "Tokyo Night Storm",
    font = wezterm.font("FiraCode Nerd Font"),
    font_size = 12,
    window_background_opacity = 0.8,
    window_decorations = "RESIZE",

    -------- Tab Bar Configuration --------
    tab_bar_at_bottom = true,
    use_fancy_tab_bar = false,
    show_new_tab_button_in_tab_bar = false,
    hide_tab_bar_if_only_one_tab = false,

    ----------- Keybindings --------------
    disable_default_key_bindings = true,
    --disable_default_mouse_bindings = true,
    leader = { key = 'q', mods = 'ALT', timeout_milliseconds = 2000},
    keys = {
        { key = '.', mods = 'LEADER', action = act.SpawnTab('CurrentPaneDomain') },
        { key = '1', mods = 'LEADER', action = act.ActivateTab(0) },
        { key = '2', mods = 'LEADER', action = act.ActivateTab(1) },
        { key = '3', mods = 'LEADER', action = act.ActivateTab(2) },
        { key = '4', mods = 'LEADER', action = act.ActivateTab(3) },
        { key = '5', mods = 'LEADER', action = act.ActivateTab(4) },
        { key = '6', mods = 'LEADER', action = act.ActivateTab(5) },
        { key = '7', mods = 'LEADER', action = act.ActivateTab(6) },
        { key = '8', mods = 'LEADER', action = act.ActivateTab(7) },
        { key = '9', mods = 'LEADER', action = act.ActivateTab(8) },
        { key = '0', mods = 'LEADER', action = act.ActivateTab(9) },
        --
        { key = 'c', mods = 'CTRL|SHIFT', action = act.CopyTo 'Clipboard' },
        { key = 'v', mods = 'CTRL|SHIFT', action = act.PasteFrom 'Clipboard' },
        { key = 'R', mods = 'CTRL', action = act.ReloadConfiguration },
        { key = 'Z', mods = 'CTRL', action = act.TogglePaneZoomState },

        -- Pane Configuration
        -- { key = ',', mods = 'LEADER', action = act.SplitHorizontal{ domain =  'CurrentPaneDomain' } },
        -- { key = '.', mods = 'LEADER', action = act.SplitVertical{ domain =  'CurrentPaneDomain' } },
        { key = '/', mods = 'LEADER', action = act.CloseCurrentPane{ confirm = false} },
        --
        -- { key = 'h', mods = 'LEADER', action = act.ActivatePaneDirection('Left') },
        -- { key = 'j', mods = 'LEADER', action = act.ActivatePaneDirection('Down') },
        -- { key = 'k', mods = 'LEADER'  action = act.ActivatePaneDirection('Up') },
        -- { key = 'l', mods = 'LEADER', action = act.ActivatePaneDirection('Right') },
    },
}
