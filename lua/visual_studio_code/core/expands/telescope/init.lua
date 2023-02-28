local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return {
        TelescopeSelectionCaret = { fg = colors.__vscode_extra_decorate_color },
        TelescopeBorder = { fg = colors.__vscode_window_spearator_color },
        TelescopeTitle = { link = "Title" },
        TelescopeSelection = {
            bg = colors.__vscode_onaction_cursor_line_background,
            bold = true,
        },
        TelescopeMatching = {
            fg = colors.__vscode_extra_decorate_color,
        },
    }
end

return M
