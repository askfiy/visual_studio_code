local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return {
        NvimTreeSymlink = {
            fg = colors.__vscode_wrapper_blue,
        },
        NvimTreeRootFolder = {
            fg = colors.__vscode_wrapper_blue,
        },
        NvimTreeFolderName = {
            fg = colors.__vscode_tree_fonts_foreground,
        },
        NvimTreeFolderIcon = {
            fg = colors.__vscode_tree_icons_foreground,
        },
        NvimTreeEmptyFolderName = {
            link = "vimTreeFolderName",
        },
        NvimTreeOpenedFolderName = {
            link = "NvimTreeFolderName",
        },
        NvimTreeExecFile = {
            link = "NvimTreeFolderName",
        },
        NvimTreeOpenedFile = {
            link = "NvimTreeFolderName",
        },
        NvimTreeModifiedFile = {
            link = "NvimTreeFolderName",
        },
        NvimTreeSpecialFile = {
            link = "NvimTreeFolderName",
        },
        NvimTreeImageFile = {
            link = "NvimTreeFolderName",
        },
        NvimTreeIndentMarker = {
            link = "NvimTreeFolderName",
        },
        NvimTreeNormal = {
            fg = colors.__vscode_tree_fonts_foreground,
            bg = colors.__vscode_editor_background,
        },
        NvimTreeEndOfBuffer = {
            link = "NvimTreeNormal",
        },
        NvimTreeGitDirty = { fg = colors.__vscode_tree_fonts_foreground },
        NvimTreeGitNew = { fg = colors.__vscode_gitDecoration_addedResourceForeground },
        NvimTreeGitStaged = { fg = colors.__vscode_gitDecoration_stageModifiedResourceForeground },
        NvimTreeGitMerge = { fg = colors.__vscode_gitDecoration_modifiedResourceForeground },
        NvimTreeGitRenamed = { fg = colors.__vscode_gitDecoration_renamedResourceForeground },
        NvimTreeGitDeleted = { fg = colors.__vscode_gitDecoration_stageDeletedResourceForeground },
        NvimTreeGitIgnored = { fg = colors.__vscode_gitDecoration_ignoredResourceForeground },
        NvimTreeBookmark = { fg = colors.__vscode_wrapper_blue },
    }
end

return M
