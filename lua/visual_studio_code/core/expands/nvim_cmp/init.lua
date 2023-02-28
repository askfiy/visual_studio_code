local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return {
        CmpItemAbbr = { fg = colors.__vscode_curr_table_foreground },
        CmpItemKind = { fg = colors.__vscode_curr_table_foreground },
        CmpItemMenu = { fg = colors.__vscode_curr_table_foreground },
        CmpItemAbbrMatch = { fg = colors.__vscode_keyword, bold = true },
        CmpItemAbbrMatchFuzzy = { fg = colors.__vscode_keyword },
        CmpItemAbbrDeprecated = { fg = colors.__vsocode_tag_warpper_foreground, strikethrough = true },
        CmpItemKindVariable = { fg = colors.__vscode_type },
        CmpItemKindText = { fg = colors.__vscode_type },
        CmpItemKindKeyword = { fg = colors.__vscode_file },
        CmpItemKindConstructor = { fg = colors.__vscode_file },
        CmpItemKindUnit = { fg = colors.__vscode_file },
        CmpItemKindFunction = { fg = colors.__vscode_file },
        CmpItemKindMethod = { fg = colors.__vscode_file },
        CmpItemKindConstant = { fg = colors.__vscode_file },
        CmpItemKindStruct = { fg = colors.__vscode_variable },
        CmpItemKindInterface = { fg = colors.__vscode_variable },
        CmpItemKindClass = { fg = colors.__vscode_variable },
        CmpItemKindField = { fg = colors.__vscode_variable },
        CmpItemKindProperty = { fg = colors.__vscode_variable },
        CmpItemKindEnum = { fg = colors.__vscode_variable },
        CmpItemKindEnumMember = { fg = colors.__vscode_variable },
        CmpItemKindFile = { fg = colors.__vscode_head },
        CmpItemKindSnippet = { fg = colors.__vscode_head },
        CmpItemKindFolder = { fg = colors.__vscode_head },
        CmpItemKindModule = { fg = colors.__vscode_head },
        CmpItemKindColor = { fg = colors.__vscode_number },
        CmpItemKindReference = { fg = colors.__vscode_number },
        CmpItemKindValue = { fg = colors.__vscode_number },
        CmpItemKindEvent = { fg = colors.__vscode_number },
        CmpItemKindOperator = { fg = colors.__vscode_number },
        CmpItemKindTypeParameter = { fg = colors.__vscode_number },
    }
end

return M
