local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return {
        rainbowcol1 = { fg = colors.__vscode_bracket_level_01 },
        rainbowcol2 = { fg = colors.__vscode_bracket_level_02 },
        rainbowcol3 = { fg = colors.__vscode_bracket_level_03 },
        rainbowcol4 = { fg = colors.__vscode_bracket_level_01 },
        rainbowcol5 = { fg = colors.__vscode_bracket_level_02 },
        rainbowcol6 = { fg = colors.__vscode_bracket_level_03 },
        rainbowcol7 = { fg = colors.__vscode_bracket_level_01 },
    }
end

return M
