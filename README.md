# README

<h3 align="center">
Neovim Visual Studio Code Theme
</h3>

<h6>
A `neovim` theme based on `visual studio code`, written in `Lua`.
It tries to get all the colors in `developer mode` of `vscode`, so the simulation is very high.
</h6>

<h6 align="center">
<hr/>
<img src="./screen/dark.png" width="80%" />
<hr/>
<img src="./screen/light.png" width="80%" />
</h6>
<hr/>

## Install and use

Install via `Lazy`:

```lua
-- lazy
{
    "askfiy/visual_studio_code",
    priority = 100,
    config = function()
        vim.cmd([[colorscheme visual_studio_code]])
    end,
},
```

Install via `Packer`:

```lua
-- packer
{
    "askfiy/visual_studio_code",
    config = function()
        vim.cmd([[colorscheme visual_studio_code]])
    end,
}
```

## Default configuration

Default config, modify any option via `setup()`:

```lua
require("visual_studio_code").setup({
    -- `dark` or `light`
    mode = "dark",
    -- Whether to load all color schemes
    preset = true,
    -- Whether to enable background transparency
    transparent = false,
    -- Whether to apply the adapted plugin
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
        before = function(conf, colors, utils) end,
        after = function(conf, colors, utils) end,
    },
})
```

## Related functions

The plugin provides some utility functions:

```lua
require("visual_studio_code")
   - get_config()               -- current configuration table
   - get_colors()               -- current color highlight table
   - get_lualine_sections()     -- lualine sections table
   - get_bufferline_right()     -- bufferline custom right area

require("visual_studio_code.utils")
   - hl.set(name, options)
   - hl.link(src, dst)
   - hl.get(name, option)
   - hl.bulk_set(groups)
```

Example:

```lua
require("visual_studio_code.utils").hl.set("Normal", { fg = "#000000", bg = "#1E1E2E"})

require("visual_studio_code.utils").hl.link("NormalFloat", "Normal")

require("visual_studio_code.utils").hl.get("Normal", "fg")   -- #000000

require("visual_studio_code.utils").hl.bulk_set({
    Normal = { fg = "#000000", bg = "#1E1E2E"},
    NormalFloat = { link = "Normal" },
    Cursor = { bg = "#0FE1EE", bold = true }
})
```

## Hooks function

The plugin provides 2 hook functions, which are automatically executed before and after the color is applied:

```lua
hooks = {
    before = function(conf, colors, utils) end,
    after = function(conf, colors, utils) end,
}
```

## Additional considerations

Regarding the `bufferline`, you need to make sure it has the `themable` option turned on:

```lua

require("bufferline").setup({
    options = {
        themable = true,
        ...
    }
})
```

If you need to use the `vim_visual_multi` plugin adaptation, please add the following code to your `init.lua` file:

```lua
vim.g.VM_Extend_hl = "VM_Extend_hl"
vim.g.VM_Cursor_hl = "VM_Cursor_hl"
vim.g.VM_Mono_hl = "VM_Mono_hl"
vim.g.VM_Insert_hl = "VM_Insert_hl"
```

If you don't use `tmux`, try running `:set cmdheight=0`.

If some `nvim-web-devicons` icons do not display well in `light` mode, please tell me the name of the icon, and I will adapt it.

## Lualine integrated

To quickly get a `vscode` style statusline, you need to use `lualine`:

```lua
require("lualine").setup({
    options = {
        theme = "visual_studio_code",
        icons_enabled = true,
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {},
        globalstatus = true,
        refresh = {
            statusline = 100,
        },
    },
    sections = require("visual_studio_code").get_lualine_sections(),
})
```

## Bufferline integrated

要快速获取 `vscode` 右上角的几个按钮，你可以向下面这样设置 `bufferline`:

```lua
require("bufferline").setup({
    options = {
        themable = true,
        close_icon = "",
        ...
        custom_areas = {
            right = require("visual_studio_code").get_bufferline_right(),
        },
    }
})
```

## Extension

Extended plugin colors are in the `expands` directory.

[lua/visual_studio_code/core/expands/](./lua/visual_studio_code/core/expands/)

Also, any new `PR`s are welcome, as I'm not enthusiastic about plugin adaptation, so may need everyone's help to make it better..

## Screenshot

<h6 align="center">
<hr/>
<img src="./screen/dark01.png" width="80%" />
<hr/>
<img src="./screen/light01.png" width="80%" />
<hr/>
<img src="./screen/dark02.png" width="80%" />
<hr/>
<img src="./screen/light02.png" width="80%" />
<hr/>
</h6>
