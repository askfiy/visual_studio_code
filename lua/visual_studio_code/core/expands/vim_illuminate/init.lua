local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return {
        IlluminatedWordText = { bg = colors.__vscode_editor_wordOtherHighlightBackground },
        IlluminatedWordRead = { bg = colors.__vscode_editor_wordOtherHighlightBackground },
        IlluminatedWordWrite = { bg = colors.__vscode_editor_wordOtherHighlightBackground },
    }
end

return M
