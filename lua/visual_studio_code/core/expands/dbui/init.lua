local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return {
        dbui_collapsed_tables = { link = "Normal" },
        dbui_expanded_tables = { link = "Normal" },
    }
end

return M
