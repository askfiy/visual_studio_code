local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return {
        GitSignsCurrentLineBlame = { fg = colors.__vscode_inactive_table_foreground },
        GitSignsAdd = { fg = colors.__vscode_git_added_foreground },
        GitSignsAddLn = { link = "GitSignsAdd" },
        GitSignsAddNr = { link = "GitSignsAdd" },
        GitSignsChange = { fg = colors.__vscode_git_modified_foreground },
        GitSignsChangeLn = { link = "GitSignsChange" },
        GitSignsChangeNr = { link = "GitSignsChange" },
        GitSignsChangeDelete = { fg = colors.__vscode_git_modified_foreground },
        GitSignsChangeDeleteLn = { link = "GitSignsChange" },
        GitSignsChangeDeleteNr = { link = "GitSignsChange" },
        GitSignsDelete = { fg = colors.__vscode_git_stage_deleted_foreground },
        GitSignsDeleteLn = { link = "GitSignsDelete" },
        GitSignsDeleteNr = { link = "GitSignsDelete" },
        GitSignsTopdelete = { fg = colors.__vscode_git_stage_deleted_foreground },
        GitSignsTopdeleteLn = { link = "GitSignsDelete" },
        GitSignsTopdeleteNr = { link = "GitSignsDelete" },
        GitSignsAddInline = { fg = colors.__vscode_git_added_foreground },
        GitSignsDeleteInline = { fg = colors.__vscode_git_modified_foreground },
        GitSignsChangeInline = { fg = colors.__vscode_git_stage_deleted_foreground },

    }
end

return M
