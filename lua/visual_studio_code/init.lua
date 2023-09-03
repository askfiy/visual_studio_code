-- author: askfiy
-- date: 2023-03-01
-- repo: https://github.com/askfiy/visual_studio_code

-- An interesting neovim colors scheme plugin ..

local core = require("visual_studio_code.core")
local utils = require("visual_studio_code.utils")
local hooks = require("visual_studio_code.core.hooks")

local default_colors = require("visual_studio_code.colors")
local default_config = require("visual_studio_code.config")

-- NOTE: Develop test mode !!
-- require("visual_studio_code.test")

local function apply_basic_highlight(conf, mode_colors)
    utils.hl.bulk_set(core.get_basic_highlight(conf, mode_colors))
end

---@diagnostic disable-next-line: unused-function, unused-local
local function apply_expands_highlight(conf, mode_colors)
    utils.hl.bulk_set(core.get_expands_highlight(conf, mode_colors))
end

local function apply_transparent_highlight(conf, mode_colors)
    if conf.transparent then
        utils.hl.bulk_set(core.get_transparent_highlight(conf, mode_colors))
    end
end

local M = {
    _conf = {
        -- user config
    },
    _colors = {
        -- current colors
    },
}

function M.setup(opts)
    M._conf = vim.tbl_deep_extend("force", default_config, opts or {})
    M._colors = default_colors.get_colors(M._conf.mode)
end

function M.enter()
    local config = M.get_config()
    local colors = M.get_colors()

    if vim.tbl_isempty(config) then
        -- use default config
        config = default_config
    end

    if vim.tbl_isempty(colors) then
        -- use default colors
        colors = default_colors.get_colors("dark")
    end

    vim.opt.background = config.mode

    vim.cmd("highlight clear")
    if vim.fn.exists("syntax_on") == 1 then
        vim.cmd("syntax reset")
    end

    -- First it will run the global hook function, which is a necessary job
    -- For `light` mode, it will adjust the highlighting of some plugins, such as: nvim-web-devicons
    -- Second, it will run the user-defined hook function, you can change any highlight group you want in the custom hook function
    hooks.before(config, colors, utils)

    if config.preset then
        apply_basic_highlight(config, colors)
        apply_expands_highlight(config, colors)
        apply_transparent_highlight(config, colors)
    end

    hooks.after(config, colors, utils)
end

function M.get_config()
    return M._conf
end

function M.get_colors()
    return M._colors
end

-- VScode statusline customized for `lualine` plugin
function M.get_lualine_sections()
    return require("visual_studio_code.extra.lualine.sections")(
        M.get_config(),
        M.get_colors()
    )
end

function M.get_bufferline_right()
    return require("visual_studio_code.extra.bufferline.right")(
        M.get_config(),
        M.get_colors()
    )
end

return M
