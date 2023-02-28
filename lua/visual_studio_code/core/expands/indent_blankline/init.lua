local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return {
        IndentBlanklineChar = { fg = colors.__vscode_inactive_indent_guide_background},
        IndentBlanklineContextChar = { fg = colors.__vscode_onactive_indent_guide_background },
    }
end

return M
