local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return {
        IlluminatedWordText = { bg = colors.__vscode_other_word_highlight_background },
        IlluminatedWordRead = { bg = colors.__vscode_other_word_highlight_background },
        IlluminatedWordWrite = { bg = colors.__vscode_other_word_highlight_background },
    }
end

return M
