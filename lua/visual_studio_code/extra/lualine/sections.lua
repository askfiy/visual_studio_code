---@diagnostic disable: unused-local
return function(conf, colors)
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
                    ---@diagnostic disable-next-line: param-type-mismatch
                    local expand = vim.opt_local.expandtab:get()
                    ---@diagnostic disable-next-line: param-type-mismatch
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
            {
                "location",
                padding = { left = 0, right = 1 },
            },
            {
                "progress",
                fmt = function(content, context)
                    local visual_str = {
                        ["v"] = true,
                        ["V"] = true,
                        ["\22"] = true,
                    }
                    if visual_str[tostring(vim.fn.mode())] then
                        local ln_beg = vim.fn.line("v")
                        local ln_end = vim.fn.line(".")
                        -- local end = vim.fn.line("")
                        local lines = ln_beg <= ln_end and ln_end - ln_beg + 1 or ln_beg - ln_end + 1
                        return ("- %d -"):format(tostring(lines))
                    end

                    return content
                end,
            },
        },
        lualine_z = {
            {
                "filetype",
                icons_enabled = false,
            },
            {
                "decorate",
                fmt = function(content, context)
                    -- 
                    return "   "
                end,
            },
        },
    }
end
