local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return {
        WhichKey = { fg = colors.__vscode_extra_decorate_color },
        WhichKeySeparator = { fg = colors.__vscode_methods },
        WhichKeyGroup = { fg = colors.__vscode_strings },
        WhichKeyDesc = { fg = colors.__vscode_comment },
    }
end

return M
