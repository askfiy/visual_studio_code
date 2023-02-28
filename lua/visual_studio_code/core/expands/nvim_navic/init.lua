local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return {
        NavicText = { fg = colors.__vscode_winbar_color },
        NavicSeparator = { fg = colors.__vscode_winbar_color },
        NavicIconsFile = { fg = colors.__vscode_winbar_color },
        NavicIconsModule = { fg = colors.__vscode_winbar_color },
        NavicIconsNamespace = { fg = colors.__vscode_winbar_color },
        NavicIconsPackage = { fg = colors.__vscode_winbar_color },
        NavicIconsClass = { fg = colors.__vscode_winbar_color },
        NavicIconsMethod = { fg = colors.__vscode_winbar_color },
        NavicIconsProperty = { fg = colors.__vscode_winbar_color },
        NavicIconsField = { fg = colors.__vscode_winbar_color },
        NavicIconsConstructor = { fg = colors.__vscode_winbar_color },
        NavicIconsEnum = { fg = colors.__vscode_winbar_color },
        NavicIconsInterface = { fg = colors.__vscode_winbar_color },
        NavicIconsFunction = { fg = colors.__vscode_winbar_color },
        NavicIconsVariable = { fg = colors.__vscode_winbar_color },
        NavicIconsConstant = { fg = colors.__vscode_winbar_color },
        NavicIconsString = { fg = colors.__vscode_winbar_color },
        NavicIconsNumber = { fg = colors.__vscode_winbar_color },
        NavicIconsBoolean = { fg = colors.__vscode_winbar_color },
        NavicIconsArray = { fg = colors.__vscode_winbar_color },
        NavicIconsObject = { fg = colors.__vscode_winbar_color },
        NavicIconsKey = { fg = colors.__vscode_winbar_color },
        NavicIconsNull = { fg = colors.__vscode_winbar_color },
        NavicIconsEnumMember = { fg = colors.__vscode_winbar_color },
        NavicIconsStruct = { fg = colors.__vscode_winbar_color },
        NavicIconsEvent = { fg = colors.__vscode_winbar_color },
        NavicIconsOperator = { fg = colors.__vscode_winbar_color },
        NavicIconsTypeParameter = { fg = colors.__vscode_winbar_color },
    }
end

return M
