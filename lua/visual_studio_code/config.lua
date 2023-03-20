local default_config = {
    -- `dark` or `light`
    mode = "dark",
    preset = true,
    transparent = false,
    expands = {
        hop = true,
        dbui = true,
        lazy = true,
        aerial = true,
        fidget = true,
        null_ls = true,
        nvim_cmp = true,
        gitsigns = true,
        which_key = true,
        nvim_tree = true,
        lspconfig = true,
        telescope = true,
        bufferline = true,
        nvim_navic = true,
        nvim_notify = true,
        vim_illuminate = true,
        nvim_treesitter = true,
        nvim_ts_rainbow = true,
        nvim_scrollview = true,
        nvim_ts_rainbow2 = true,
        indent_blankline = true,
        vim_visual_multi = true,
    },
    hooks = {
        ---@diagnostic disable-next-line: unused-local
        before = function(conf, colors, utils) end,
        ---@diagnostic disable-next-line: unused-local
        after = function(conf, colors, utils) end,
    },
}

return default_config
