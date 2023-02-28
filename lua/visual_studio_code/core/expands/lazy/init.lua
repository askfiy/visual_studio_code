local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return {
        LazyH1 = { fg = colors.__vscode_curr_table_foreground, bg = colors.__vscode_editor_selectionBackground },
        LazyButton = {
            fg = colors.__vscode_foreground,
            bg = colors.__vscode_list_inactiveSelectionBackground,
        },
        LazySpecial = {
            fg = colors.__vscode_foreground,
        },
        LazyButtonActive = {
            fg = colors.__vscode_curr_table_foreground,
            bg = colors.__vscode_editor_selectionBackground,
        },
        LazyReasonInit = {
            fg = colors.__vscode_wrapper_blue,
        },
        LazyH2 = { fg = colors.__vscode_wrapper_blue },
        LazyProp = { fg = colors.__vscode_methods },
        LazyReasonCmd = { fg = colors.__vscode_head },
        LazyReasonEvent = { fg = colors.__vscode_head },
        LazyReasonFt = { fg = colors.__vscode_head },
        LazyReasonKeys = { fg = colors.__vscode_wrapper_blue },
        LazyReasonPlugin = { fg = colors.__vscode_methods },
        LazyReasonRuntime = { fg = colors.__vscode_type },
        LazyReasonSource = { fg = colors.__vscode_strings },
        LazyReasonStart = { fg = colors.__vscode_file },
    }
end

return M
