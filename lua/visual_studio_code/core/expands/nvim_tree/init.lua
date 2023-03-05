local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return {
        NvimTreeSymlink = { fg = colors.__vscode_extra_decorate_color },
        NvimTreeRootFolder = { fg = colors.__vscode_extra_decorate_color },
        NvimTreeFolderName = { fg = colors.__vscode_tree_fonts_foreground },
        NvimTreeFolderIcon = { fg = colors.__vscode_tree_icons_foreground },
        NvimTreeEmptyFolderName = { link = "vimTreeFolderName" },
        NvimTreeOpenedFolderName = { link = "NvimTreeFolderName" },
        NvimTreeExecFile = { link = "NvimTreeFolderName" },
        NvimTreeOpenedFile = { link = "NvimTreeFolderName" },
        NvimTreeModifiedFile = { link = "NvimTreeFolderName" },
        NvimTreeSpecialFile = { link = "NvimTreeFolderName" },
        NvimTreeImageFile = { link = "NvimTreeFolderName" },
        NvimTreeIndentMarker = { link = "NvimTreeFolderName" },
        NvimTreeNormal = { fg = colors.__vscode_tree_fonts_foreground, bg = colors.__vscode_local_background },
        NvimTreeEndOfBuffer = { link = "NvimTreeNormal" },
        NvimTreeGitDirty = { fg = colors.__vscode_tree_fonts_foreground },
        NvimTreeGitNew = { fg = colors.__vscode_git_added_foreground },
        NvimTreeGitStaged = { fg = colors.__vscode_git_stage_modified_foreground },
        NvimTreeGitMerge = { fg = colors.__vscode_git_modified_foreground },
        NvimTreeGitRenamed = { fg = colors.__vscode_git_rename_foreground },
        NvimTreeGitDeleted = { fg = colors.__vscode_git_stage_deleted_foreground },
        NvimTreeGitIgnored = { fg = colors.__vscode_git_ignore_foreground },
        NvimTreeBookmark = { fg = colors.__vscode_extra_decorate_color },
        NvimTreeWindowPicker = {
            fg = colors.__vscode_statusline_foreground,
            bg = colors.__vscode_statusline_background,
        },
    }
end

return M
