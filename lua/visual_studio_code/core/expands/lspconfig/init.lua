local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return {
        DiagnosticError = { fg = colors.__vscode_lsp_error },
        DiagnosticWarn = { fg = colors.__vscode_lsp_warn },
        DiagnosticInfo = { fg = colors.__vscode_lsp_info },
        DiagnosticHint = { fg = colors.__vscode_lsp_hint },
        DiagnosticSignError = { fg = colors.__vscode_lsp_error },
        DiagnosticSignWarn = { fg = colors.__vscode_lsp_warn },
        DiagnosticSignInformation = { fg = colors.__vscode_lsp_info },
        DiagnosticSignHint = { fg = colors.__vscode_lsp_hint },
        DiagnosticFloatingError = { fg = colors.__vscode_lsp_error },
        DiagnosticFloatingWarn = { fg = colors.__vscode_lsp_warn },
        DiagnosticFloatingInformation = { fg = colors.__vscode_lsp_info },
        DiagnosticFloatingHint = { fg = colors.__vscode_lsp_hint },
        DiagnosticVirtualTextError = { fg = colors.__vscode_lsp_error },
        DiagnosticVirtualTextWarn = { fg = colors.__vscode_lsp_warn },
        DiagnosticVirtualTextInformation = { fg = colors.__vscode_lsp_info },
        DiagnosticVirtualTextHint = { fg = colors.__vscode_lsp_hint },
        DiagnosticUnderlineError = { underline = true, sp = colors.__vscode_lsp_error },
        DiagnosticUnderlineWarn = { underline = true, sp = colors.__vscode_lsp_warn },
        DiagnosticUnderlineInformation = { underline = true, sp = colors.__vscode_lsp_info },
        DiagnosticUnderlineHint = { underline = true, sp = colors.__vscode_lsp_hint },
        DiagnosticUnnecessary = { fg = colors.__vscode_unused_color },
        LspInfoBorder = { fg = colors.__vscode_window_spearator_color, bold = true },
        LspSignatureActiveParameter = { fg = colors.__vscode_extra_decorate_color, bold = true },
        LspInlayHint = { fg = colors.__vscode_inactive_table_foreground },
    }
end

return M
