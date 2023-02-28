local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return {
        GitSignsCurrentLineBlame = { fg = colors.__vscode_inactive_table_foreground },
        GitSignsAdd = { fg = colors.__vscode_git_added_foreground },
        GitSignsChange = { fg = colors.__vscode_git_modified_foreground },
        GitSignsDelete = { fg = colors.__vscode_git_stage_deleted_foreground },
        GitSignsAddLn = { fg = colors.__vscode_git_added_foreground },
        GitSignsChangeLn = { fg = colors.__vscode_git_modified_foreground },
        GitSignsDeleteLn = { fg = colors.__vscode_git_stage_deleted_foreground },
        GitSignsAddInline = { fg = colors.__vscode_git_added_foreground },
        GitSignsDeleteInline = { fg = colors.__vscode_git_modified_foreground },
        GitSignsChangeInline = { fg = colors.__vscode_git_stage_deleted_foreground },
    }
end

return M
