local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return {
        FidgetTitle = { fg = colors.__vscode_extra_decorate_color, bold = true },
        FidgetTask = { fg = colors.__vscode_extra_decorate_color },
    }
end

return M
