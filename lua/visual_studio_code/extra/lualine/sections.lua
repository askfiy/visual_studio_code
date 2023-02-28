---@diagnostic disable: unused-local

return {
    lualine_a = {
        {
            "headers",
            fmt = function(content, context)
                return "  "
            end,
        },
    },
    lualine_b = {
        { "branch", icon = "" },
        {
            "mode",
            fmt = function(content, context)
                return ("-- %s --"):format(content)
            end,
        },
    },
    lualine_c = {
        {
            "filename",
            symbols = {
                modified = "",
                readonly = "",
                unnamed = "",
                newfile = "",
            },
        },
    },
    lualine_x = {
        {
            "space_style",
            fmt = function(content, context)
                local expand = vim.opt_local.expandtab:get()
                local widht = vim.opt_local.shiftwidth:get()
                local style = expand and "Spaces" or "Tab Size"
                return ("%s: %s"):format(style, widht)
            end,
        },
        "encoding",
        {
            "fileformat",
            icons_enabled = false,
            fmt = function(content, context)
                local style = {
                    mac = "LF",
                    unix = "LF",
                    dos = "CRLF",
                }
                return style[content]
            end,
        },
    },
    lualine_y = {
        { "location", padding = { left = 0, right = 1 } },
        { "progress" },
    },
    lualine_z = {
        {
            "filetype",
            icons_enabled = false,
        },
        {
            "decorate",
            fmt = function(content, context)
                return "   "
            end,
        },
    },
}
