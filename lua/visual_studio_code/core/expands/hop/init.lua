local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return {
        HopNextKey = { fg = colors.__vscode_bracket_level_01, bold = true },
        HopNextKey1 = { fg = colors.__vscode_bracket_level_02, bold = true },
        HopNextKey2 = { fg = colors.__vscode_diff_text_foreground, bold = true, italic = true },
        HopUnmatched = { fg = colors.__vscode_other_table_foreground },
    }
end

return M
