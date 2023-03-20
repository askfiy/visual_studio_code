local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return {
        TSRainbowRed = { fg = colors.__vscode_bracket_level_01_foreground },
        TSRainbowYellow = { fg = colors.__vscode_bracket_level_02_foreground },
        TSRainbowBlue = { fg = colors.__vscode_bracket_level_03_foreground },
        TSRainbowOrange = { fg = colors.__vscode_bracket_level_01_foreground },
        TSRainbowGreen = { fg = colors.__vscode_bracket_level_02_foreground },
        TSRainbowViolet = { fg = colors.__vscode_bracket_level_03_foreground },
        TSRainbowCyan = { fg = colors.__vscode_bracket_level_01_foreground },
    }
end

return M
