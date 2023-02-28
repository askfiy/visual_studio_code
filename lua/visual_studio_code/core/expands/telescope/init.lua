local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return {
        TelescopeSelectionCaret = { fg = colors.__vscode_wrapper_blue },
        TelescopeBorder = { fg = colors.__vscode_window_separator },
        TelescopeTitle = { link = "Title" },
        TelescopeSelection = {
            bg = colors.__vscode_list_inactiveSelectionBackground,
            bold = true,
        },
        TelescopeMatching = {
            fg = colors.__vscode_wrapper_blue,
        },
    }
end

return M
