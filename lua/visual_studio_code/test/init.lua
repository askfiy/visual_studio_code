local colors_scheme = "visual_studio_code"

local function dev_reload()
    for k, _ in pairs(package.loaded) do
        if k:match(colors_scheme) then
            package.loaded[k] = nil
        end
    end

    require(colors_scheme).setup()
end

-- When in development mode, press `<leader>pr` to quickly reload your changes
vim.keymap.set({ "n" }, "<leader>pr", dev_reload, { silent = true, desc = "Test plugin function" })
