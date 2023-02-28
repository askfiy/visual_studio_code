local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return {
        Normal = { fg = colors.__vscode_foreground },
        NormalFloat = { fg = colors.__vscode_foreground },
        Directory = { fg = colors.__vscode_extra_decorate_color, bold = true },
        -- NOTE: It may be a structure that needs to be optimized, the plugin and the basic highlight group should not be coupled here
        -- Nvim-Tree
        NvimTreeNormal = { fg = colors.__vscode_tree_fonts_foreground },
    }
end

return M
