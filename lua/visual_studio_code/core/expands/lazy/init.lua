local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return {
        LazyH1 = { fg = colors.__vscode_onactive_table_foreground, bg = colors.__vscode_visual_color },
        LazyButton = { fg = colors.__vscode_foreground, bg = colors.__vscode_onaction_cursor_line_background },
        LazySpecial = { fg = colors.__vscode_foreground },
        LazyButtonActive = { fg = colors.__vscode_onactive_table_foreground, bg = colors.__vscode_visual_color },
        LazyReasonInit = { fg = colors.__vscode_extra_decorate_color },
        LazyH2 = { fg = colors.__vscode_extra_decorate_color },
        LazyProp = { fg = colors.__vscode_methods },
        LazyReasonCmd = { fg = colors.__vscode_head },
        LazyReasonEvent = { fg = colors.__vscode_head },
        LazyReasonFt = { fg = colors.__vscode_head },
        LazyReasonKeys = { fg = colors.__vscode_extra_decorate_color },
        LazyReasonPlugin = { fg = colors.__vscode_methods },
        LazyReasonRuntime = { fg = colors.__vscode_type },
        LazyReasonSource = { fg = colors.__vscode_strings },
        LazyReasonStart = { fg = colors.__vscode_file },
    }
end

return M
