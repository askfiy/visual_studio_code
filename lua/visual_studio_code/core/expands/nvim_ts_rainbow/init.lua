local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return {
        rainbowcol1 = { fg = colors.__vscode_bracket_level_01_foreground },
        rainbowcol2 = { fg = colors.__vscode_bracket_level_02_foreground },
        rainbowcol3 = { fg = colors.__vscode_bracket_level_03_foreground },
        rainbowcol4 = { fg = colors.__vscode_bracket_level_01_foreground },
        rainbowcol5 = { fg = colors.__vscode_bracket_level_02_foreground },
        rainbowcol6 = { fg = colors.__vscode_bracket_level_03_foreground },
        rainbowcol7 = { fg = colors.__vscode_bracket_level_01_foreground },
    }
end

return M
