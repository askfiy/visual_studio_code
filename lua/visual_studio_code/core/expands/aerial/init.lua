local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return {
        AerialLine = { bg = colors.__vscode_list_inactiveSelectionBackground },
        AerialLineNC = { bg = colors.__vscode_list_inactiveSelectionBackground },
        AerialGuide = { fg = colors.__vscode_wrapper_blue },
        AerialArrayIcon = { fg = colors.__vscode_wrapper_blue },
        AerialBooleanIcon = { fg = colors.__vscode_wrapper_blue },
        AerialClassIcon = { fg = colors.__vscode_wrapper_blue },
        AerialConstantIcon = { fg = colors.__vscode_wrapper_blue },
        AerialConstructorIcon = { fg = colors.__vscode_wrapper_blue },
        AerialEnumIcon = { fg = colors.__vscode_wrapper_blue },
        AerialEnumMemberIcon = { fg = colors.__vscode_wrapper_blue },
        AerialEventIcon = { fg = colors.__vscode_wrapper_blue },
        AerialFieldIcon = { fg = colors.__vscode_wrapper_blue },
        AerialFileIcon = { fg = colors.__vscode_wrapper_blue },
        AerialFunctionIcon = { fg = colors.__vscode_wrapper_blue },
        AerialInterfaceIcon = { fg = colors.__vscode_wrapper_blue },
        AerialKeyIcon = { fg = colors.__vscode_wrapper_blue },
        AerialMethodIcon = { fg = colors.__vscode_wrapper_blue },
        AerialModuleIcon = { fg = colors.__vscode_wrapper_blue },
        AerialNamespaceIcon = { fg = colors.__vscode_wrapper_blue },
        AerialNullIcon = { fg = colors.__vscode_wrapper_blue },
        AerialNumberIcon = { fg = colors.__vscode_wrapper_blue },
        AerialObjectIcon = { fg = colors.__vscode_wrapper_blue },
        AerialOperatorIcon = { fg = colors.__vscode_wrapper_blue },
        AerialPackageIcon = { fg = colors.__vscode_wrapper_blue },
        AerialPropertyIcon = { fg = colors.__vscode_wrapper_blue },
        AerialStringIcon = { fg = colors.__vscode_wrapper_blue },
        AerialStructIcon = { fg = colors.__vscode_wrapper_blue },
        AerialTypeParameterIcon = { fg = colors.__vscode_wrapper_blue },
        AerialVariableIcon = { fg = colors.__vscode_wrapper_blue },
    }
end

return M
