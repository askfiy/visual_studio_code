local M = {}

-- M.set("Normal", { fg = "#000000", bg = "#1E1E2E"})
function M.set(name, options)
    local ok, err = pcall(vim.api.nvim_set_hl, 0, name, options)

    if not ok then
        vim.api.nvim_echo({
            {
                ("%s : set highlight failed\n %s"):format(name, err),
                "ErrorMsg",
            },
        }, true, {})
    end
end

-- M.link("NormalFloat", "Normal")
function M.link(src, dst)
    local ok, err = pcall(vim.api.nvim_set_hl, 0, src, { link = dst })

    if not ok then
        vim.api.nvim_echo({
            {
                ("%s link to highlight %s failed\n %s"):format(src, dst, err),
                "ErrorMsg",
            },
        }, true, {})
    end
end

-- M.get("Normal", "fg")
function M.get(name, option)
    local ok, rs = pcall(vim.api.nvim_get_hl, name, true)
    local kd_as = {
        foreground = "fg",
        background = "bg",
        special = "sp",
    }

    if not ok then
        vim.api.nvim_echo({
            {
                ("%s : get highlight failed\n %s"):format(name, rs),
                "ErrorMsg",
            },
        }, true, {})

        return
    end

    for kw, as in pairs(kd_as) do
        if rs[kw] then
            local rgb = ("#%06x"):format(rs[kw])
            rs[kw] = rgb
            rs[as] = rgb
        end
    end

    return option and rs[option] or rs
end

-- M.bulk_set({
--     Normal = { fg = "#000000", bg = "#1E1E2E"},
--     NormalFloat = { link = "Normal" },
--     Cursor = { bg = "#0FE1EE", bold = true }
-- })
function M.bulk_set(groups)
    if not vim.tbl_isempty(groups) then
        for name, options in pairs(groups) do
            if not options.link then
                M.set(name, options)
            else
                M.link(name, options.link)
            end
        end
    end
end

return M
