local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return {
        FidgetTitle = { fg = colors.__vscode_wrapper_blue, bold = true },
        FidgetTask = { fg = colors.__vscode_wrapper_blue },
    }
end

return M
