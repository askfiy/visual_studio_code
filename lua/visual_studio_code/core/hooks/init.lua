local light_icons = require("visual_studio_code.core.hooks.light_icons")

local M = {}

-- FIX: Complex structure
--[[
    The hook function here will be automatically loaded according to `conf.mode`.
    Currently only `light` mode needs to use these hooks to change some highlights.
    The problem is that this makes it difficult to manage different mode hook functions, so it should be optimized in structure
]]

function M.before(conf, colors, utils)
    -- mode hooks
    conf.hooks.before(conf, colors, utils)

    local hook_before = M[("%s_%s"):format(conf.mode, "before")]
    if conf.preset and hook_before then
        hook_before(conf, colors, utils)
    end
end

function M.after(conf, colors, utils)
    local hook_after = M[("%s_%s"):format(conf.mode, "after")]
    if conf.preset and hook_after then
        hook_after(conf, colors, utils)
    end

    -- mode hooks
    conf.hooks.after(conf, colors, utils)
end

---@diagnostic disable-next-line: unused-local
function M.light_before(conf, colors, utils)
    -- The `nvim-web-devicons` plugin does not have a proper background color for `light` mode
    -- So here we will modify the background color of some common icons so that you can see it better
    for _, icon_options in ipairs(light_icons) do
        utils.hl.set(("DevIcon%s"):format(icon_options[1]), { fg = icon_options.colors })
    end
end

---@diagnostic disable-next-line: unused-local
function M.light_after(conf, colors, utils)
    utils.hl.bulk_set({
        PmenuSel = {
            fg = colors.__vscode_onactive_table_background,
            bg = colors.__vscode_local_completion_selected_background,
        },
    })

    if conf.expands.bufferline then
        utils.hl.bulk_set({
            BufferLineIndicatorSelected = {
                fg = colors.__vscode_replace_search_color,
                bg = colors.__vscode_onactive_table_background,
            },
        })
    end
end

return M
