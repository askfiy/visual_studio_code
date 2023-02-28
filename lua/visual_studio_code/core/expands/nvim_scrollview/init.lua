local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return {
        ScrollView = { bg = colors.__vscode_global_window_scrollview_background },
    }
end

return M
