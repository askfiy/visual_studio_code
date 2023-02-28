local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return {
        -- line blame
        GitSignsCurrentLineBlame = { fg = colors.__vscode_other_table_foreground },
        -- line number
        GitSignsAdd = { fg = colors.__vscode_gitDecoration_addedResourceForeground },
        GitSignsChange = { fg = colors.__vscode_gitDecoration_modifiedResourceForeground },
        GitSignsDelete = { fg = colors.__vscode_gitDecoration_stageDeletedResourceForeground },
        -- preview hunk floating
        GitSignsAddLn = { fg = colors.__vscode_gitDecoration_addedResourceForeground },
        GitSignsChangeLn = { fg = colors.__vscode_gitDecoration_modifiedResourceForeground },
        GitSignsDeleteLn = { fg = colors.__vscode_gitDecoration_stageDeletedResourceForeground },
        -- blame line full floating
        GitSignsAddInline = { fg = colors.__vscode_gitDecoration_addedResourceForeground },
        GitSignsDeleteInline = { fg = colors.__vscode_gitDecoration_modifiedResourceForeground },
        GitSignsChangeInline = { fg = colors.__vscode_gitDecoration_stageDeletedResourceForeground },
    }
end

return M
