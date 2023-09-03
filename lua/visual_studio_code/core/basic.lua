local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_syntax_highlight(conf, colors)
    return {
        Comment = { fg = colors.__vscode_comment },
        Constant = { fg = colors.__vscode_number },
        String = { fg = colors.__vscode_strings },
        Character = { link = "String" },
        Number = { fg = colors.__vscode_number },
        Boolean = { fg = colors.__vscode_keyword },
        Float = { link = "Boolean" },
        Identifier = { fg = colors.__vscode_type },
        Function = { fg = colors.__vscode_keyword },
        Statement = { fg = colors.__vscode_keyword },
        Conditional = { fg = colors.__vscode_keyword },
        Repeat = { fg = colors.__vscode_keyword },
        Label = { fg = colors.__vscode_tag_foreground },
        Operator = { fg = colors.__vscode_variable },
        Keyword = { fg = colors.__vscode_keyword },
        Exception = { fg = colors.__vscode_keyword },
        Include = { fg = colors.__vscode_keyword },
        Define = { fg = colors.__vscode_define_foreground },
        Macro = { link = "Define" },
        PreProc = { fg = colors.__vscode_lsp_error },
        PreCondit = { link = "PreProc" },
        Type = { fg = colors.__vscode_type },
        StorageClass = { fg = colors.__vscode_keyword },
        Structure = { fg = colors.__vscode_keyword },
        Typedef = { fg = colors.__vscode_type },
        Special = { fg = colors.__vscode_variable },
        SpecialChar = { link = "Special" },
        Tag = { fg = colors.__vscode_keyword },
        Delimiter = { fg = colors.__vsocode_tag_warpper_foreground },
        SpecialComment = { link = "Comment" },
        Debug = { fg = colors.__vscode_keyword },
        Underlined = { fg = colors.__vscode_number },
        Ignore = { fg = colors.__vscode_nontext_foreground },
        Error = { fg = colors.__vscode_variable },
        Todo = { fg = colors.__vscode_todo_foreground, bg = colors.__vscode_todo_background },
    }
end

---@diagnostic disable-next-line: unused-local
function M.get_viml_highlight(conf, colors)
    return {
        Normal = { fg = colors.__vscode_foreground, bg = colors.__vscode_background },
        NormalFloat = { fg = colors.__vscode_foreground, bg = colors.__vscode_local_background },
        Visual = { bg = colors.__vscode_visual_color },
        MatchParen = { bold = true },
        CursorLine = { bg = colors.__vscode_onaction_cursor_line_background },
        CursorColumn = { link = "CursorLine" },
        ColorColumn = { link = "CursorLine" },
        Folded = { bg = colors.__vscode_fold_background },
        CursorLineNr = { fg = colors.__vscode_onaction_symbol_line_foreground },
        CursorLineSign = { link = "CursorLineNr" },
        CursorLineFold = { link = "CursorLineNr" },
        LineNr = { fg = colors.__vscode_inactive_symbol_line_foreground },
        SignColumn = { link = "LinNr" },
        FoldColumn = { link = "LinNr" },
        MsgArea = { fg = colors.__vscode_variable },
        ModeMsg = { link = "MsgArea" },
        MoreMsg = { fg = colors.__vscode_statusline_background },
        Question = { fg = colors.__vscode_extra_decorate_color, bold = true },
        WarningMsg = { fg = colors.__vscode_lsp_warn },
        ErrorMsg = { fg = colors.__vscode_lsp_error },
        MsgSeparator = { bg = colors.__vscode_local_background },
        QuickFixLine = { link = "ErrorMsg" },
        DiffAdd = { fg = colors.__vscode_diff_add_foreground },
        DiffChange = { fg = colors.__vscode_diff_change_foreground },
        DiffDelete = { fg = colors.__vscode_diff_del_foreground },
        DiffText = { fg = colors.__vscode_diff_text_foreground, bg = colors.__vscode_diff_text_background },
        NonText = { fg = colors.__vscode_nontext_foreground },
        Conceal = { link = "NonText" },
        WinSeparator = { fg = colors.__vscode_window_spearator_color, bold = true },
        Whitespace = { link = "NonText" },
        Menu = { link = "NormalFloat" },
        Pmenu = { link = "NormalFloat" },
        PmenuSel = { bg = colors.__vscode_local_completion_selected_background },
        PmenuSbar = { bg = colors.__vscode_local_background },
        PmenuThumb = { bg = colors.__vscode_local_completion_scrollview_background },
        TabLineFill = { fg = colors.__vscode_foreground, bg = colors.__vscode_local_background },
        TabLine = { fg = colors.__vscode_inactive_table_background, bg = colors.__vscode_local_background },
        TabLineSel = { fg = colors.__vscode_foreground },
        SpellBad = { sp = colors.__vscode_lsp_error, undercurl = true },
        SpellCap = { sp = colors.__vscode_lsp_warn, undercurl = true },
        SpellLocal = { sp = colors.__vscode_lsp_info, undercurl = true },
        SpellRare = { sp = colors.__vscode_head, undercurl = true },
        Search = { bg = colors.__vscode_replace_search_color },
        CurSearch = { bg = colors.__vscode_replace_search_color },
        IncSearch = { bg = colors.__vscode_replace_search_color },
        Substitute = { bg = colors.__vscode_replace_search_color, bold = true },
        Directory = { fg = colors.__vscode_extra_decorate_color, bg = colors.__vscode_local_background, bold = true },
        Title = { fg = colors.__vscode_extra_decorate_color, bold = true },
        WinBar = { fg = colors.__vscode_variable },
        Scrollbar = { bg = colors.__vscode_local_completion_scrollview_background },
        StatusLine = { fg = colors.__vscode_statusline_foreground, bg = colors.__vscode_statusline_background },
        StatusLineNC = { bg = colors.__vscode_statusline_background },
        SpecialKey = { fg = colors.__vscode_extra_decorate_color },
        FloatBorder = { fg = colors.__vscode_window_spearator_color },
        -- FloatShadowThrough = {},
        -- FloatShadow = {},
        -- FloatTitle = {},
    }
end

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return vim.tbl_deep_extend("force", M.get_viml_highlight(conf, colors), M.get_syntax_highlight(conf, colors))
end

--- init terminal color ---
vim.g.terminal_color_0 = "#6E6C7E"
vim.g.terminal_color_1 = "#F28FAD"
vim.g.terminal_color_2 = "#ABE9B3"
vim.g.terminal_color_3 = "#FAE3B0"
vim.g.terminal_color_4 = "#96CDFB"
vim.g.terminal_color_5 = "#F5C2E7"
vim.g.terminal_color_6 = "#89DCEB"
vim.g.terminal_color_7 = "#D9E0EE"
vim.g.terminal_color_8 = "#988BA2"
vim.g.terminal_color_9 = "#F28FAD"
vim.g.terminal_color_10 = "#ABE9B3"
vim.g.terminal_color_11 = "#FAE3B0"
vim.g.terminal_color_12 = "#96CDFB"
vim.g.terminal_color_13 = "#F5C2E7"
vim.g.terminal_color_14 = "#89DCEB"
vim.g.terminal_color_15 = "#D9E0EE"

return M
