local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return {
        NavicText = { fg = colors.__vscode_winbar_foreground },
        NavicSeparator = { fg = colors.__vscode_winbar_foreground },
        NavicIconsFile = { fg = colors.__vscode_winbar_foreground },
        NavicIconsModule = { fg = colors.__vscode_winbar_foreground },
        NavicIconsNamespace = { fg = colors.__vscode_winbar_foreground },
        NavicIconsPackage = { fg = colors.__vscode_winbar_foreground },
        NavicIconsClass = { fg = colors.__vscode_winbar_foreground },
        NavicIconsMethod = { fg = colors.__vscode_winbar_foreground },
        NavicIconsProperty = { fg = colors.__vscode_winbar_foreground },
        NavicIconsField = { fg = colors.__vscode_winbar_foreground },
        NavicIconsConstructor = { fg = colors.__vscode_winbar_foreground },
        NavicIconsEnum = { fg = colors.__vscode_winbar_foreground },
        NavicIconsInterface = { fg = colors.__vscode_winbar_foreground },
        NavicIconsFunction = { fg = colors.__vscode_winbar_foreground },
        NavicIconsVariable = { fg = colors.__vscode_winbar_foreground },
        NavicIconsConstant = { fg = colors.__vscode_winbar_foreground },
        NavicIconsString = { fg = colors.__vscode_winbar_foreground },
        NavicIconsNumber = { fg = colors.__vscode_winbar_foreground },
        NavicIconsBoolean = { fg = colors.__vscode_winbar_foreground },
        NavicIconsArray = { fg = colors.__vscode_winbar_foreground },
        NavicIconsObject = { fg = colors.__vscode_winbar_foreground },
        NavicIconsKey = { fg = colors.__vscode_winbar_foreground },
        NavicIconsNull = { fg = colors.__vscode_winbar_foreground },
        NavicIconsEnumMember = { fg = colors.__vscode_winbar_foreground },
        NavicIconsStruct = { fg = colors.__vscode_winbar_foreground },
        NavicIconsEvent = { fg = colors.__vscode_winbar_foreground },
        NavicIconsOperator = { fg = colors.__vscode_winbar_foreground },
        NavicIconsTypeParameter = { fg = colors.__vscode_winbar_foreground },
    }
end

return M
