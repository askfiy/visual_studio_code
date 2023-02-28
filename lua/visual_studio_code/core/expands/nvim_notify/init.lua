local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return {
        NotifyERRORBorder = { fg = colors.__vscode_lsp_error },
        NotifyERRORIcon = { fg = colors.__vscode_lsp_error },
        NotifyERRORTitle = { fg = colors.__vscode_lsp_error, italic = true },
        NotifyWARNBorder = { fg = colors.__vscode_lsp_warn },
        NotifyWARNIcon = { fg = colors.__vscode_lsp_warn },
        NotifyWARNTitle = { fg = colors.__vscode_lsp_warn, italic = true },
        NotifyINFOBorder = { fg = colors.__vscode_lsp_info },
        NotifyINFOIcon = { fg = colors.__vscode_lsp_info },
        NotifyINFOTitle = { fg = colors.__vscode_lsp_info, italic = true },
        NotifyDEBUGBorder = { fg = colors.__vscode_wrapper_blue },
        NotifyDEBUGIcon = { fg = colors.__vscode_wrapper_blue },
        NotifyDEBUGTitle = { fg = colors.__vscode_wrapper_blue, italic = true },
        NotifyTRACEBorder = { fg = colors.__vscode_methods },
        NotifyTRACEIcon = { fg = colors.__vscode_methods },
        NotifyTRACETitle = { fg = colors.__vscode_methods, italic = true },
    }
end

return M
