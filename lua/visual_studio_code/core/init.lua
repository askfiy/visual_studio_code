local M = {}

function M.get_basic_highlight(conf, colors)
    local basic = require("visual_studio_code.core.basic")
    return basic.get_highlight(conf, colors)
end

function M.get_expands_highlight(conf, colors)
    local expands = {}
    local expands_directory = "visual_studio_code.core.expands"

    local enable_expands_table = vim.tbl_filter(function(key)
        return conf.expands[key]
    end, vim.tbl_keys(conf.expands))

    -- Load all plugin color schemes
    for _, expand_name in ipairs(enable_expands_table) do
        local ok, expand_module = pcall(require, ("%s.%s"):format(expands_directory, expand_name))

        if ok then
            expands = vim.tbl_extend("force", expands, expand_module.get_highlight(conf, colors))
        else
            vim.api.nvim_echo({
                {
                    ("%s : is not exists"):format(expand_name),
                    "ErrorMsg",
                },
            }, true, {})
        end
    end

    return expands
end

function M.get_transparent_highlight(conf, colors)
    local transparent = require("visual_studio_code.core.transparent")
    return transparent.get_highlight(conf, colors)
end

return M
