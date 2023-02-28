local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return {
        IndentBlanklineChar = { fg = colors.__vscode_editorIndentGuide_background},
        IndentBlanklineContextChar = { fg = colors.__vscode_editorIndentGuide_activeBackground  },
    }
end

return M
