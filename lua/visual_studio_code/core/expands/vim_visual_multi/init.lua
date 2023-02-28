local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return {
        VM_Extend_hl = { fg = colors.__vscode_background, bg = colors.__vscode_head },
        VM_Cursor_hl = { fg = colors.__vscode_background, bg = colors.__vscode_head },
        VM_Mono_hl = { fg = colors.__vscode_background, bg = colors.__vscode_file },
        VM_insert_hl = { fg = colors.__vscode_background, bg = colors.__vscode_lsp_warn },
    }
end

return M
