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
        Ignore = { fg = colors.__vscode_editor_nontext_foreground },
        Error = { fg = colors.__vscode_variable },
        Todo = { fg = colors.__vscode_todo_foreground, bg = colors.__vscode_todo_background },
    }
end

---@diagnostic disable-next-line: unused-local
function M.get_viml_highlight(conf, colors)
    return {
        Normal = {
            fg = colors.__vscode_foreground,
            bg = colors.__vscode_background,
        },
        NormalFloat = {
            fg = colors.__vscode_foreground,
            bg = colors.__vscode_editor_background,
        },
        Visual = {
            bg = colors.__vscode_editor_selectionBackground,
        },
        MatchParen = {
            bold = true,
        },
        CursorLine = {
            bg = colors.__vscode_list_inactiveSelectionBackground,
        },
        CursorColumn = {
            link = "CursorLine",
        },
        ColorColumn = {
            link = "CursorLine",
        },
        Folded = {
            bg = colors.__vscode_editor_foldBackground,
        },
        CursorLineNr = {
            fg = colors.__vscode_editorLineNumber_activeForeground,
        },
        CursorLineSign = {
            link = "CursorLineNr",
        },
        CursorLineFold = {
            link = "CursorLineNr",
        },
        LineNr = {
            fg = colors.__vscode_editorLineNumber_foreground,
        },
        SignColumn = {
            link = "LinNr",
        },
        FoldColumn = {
            link = "LinNr",
        },
        MsgArea = {
            fg = colors.__vscode_variable,
        },
        ModeMsg = {
            link = "MsgArea",
        },
        MoreMsg = {
            link = "ModeMsg",
        },
        Question = {
            fg = colors.__vscode_wrapper_blue,
            bold = true,
        },
        WarningMsg = {
            fg = colors.__vscode_lsp_warn,
        },
        ErrorMsg = {
            fg = colors.__vscode_lsp_error,
        },
        MsgSeparator = {
            bg = colors.__vscode_editor_background,
        },
        QuickFixLine = {
            link = "ErrorMsg",
        },
        DiffAdd = {
            fg = colors.__vscode_diff_add,
        },
        DiffChange = {
            fg = colors.__vscode_diff_change,
        },
        DiffDelete = {
            fg = colors.__vscode_diff_del,
        },
        DiffText = {
            fg = colors.__vscode_diff_text_foreground,
            bg = colors.__vscode_diff_text_background,
        },
        NonText = {
            fg = colors.__vscode_editor_nontext_foreground,
        },
        Conceal = {
            link = "NonText",
        },
        WinSeparator = {
            fg = colors.__vscode_window_separator,
            bold = true,
        },
        Whitespace = {
            link = "NonText",
        },
        Menu = {
            link = "NormalFloat",
        },
        Pmenu = {
            link = "NormalFloat",
        },
        PmenuSel = {
            bg = colors.__vscode_editor_menu_selected_background,
        },
        PmenuSbar = {
            bg = colors.__vscode_editor_background,
        },
        PmenuThumb = {
            bg = colors.__vscode_editor_completion_scrollview_background,
        },
        TabLineFill = {
            fg = colors.__vscode_foreground,
            bg = colors.__vscode_editor_background,
        },
        TabLine = {
            fg = colors.__vscode_other_table_background,
            bg = colors.__vscode_editor_background,
        },
        TabLineSel = {
            fg = colors.__vscode_foreground,
        },
        SpellBad = {
            sp = colors.__vscode_lsp_error,
            undercurl = true,
        },
        SpellCap = {
            sp = colors.__vscode_lsp_warn,
            undercurl = true,
        },
        SpellLocal = {
            sp = colors.__vscode_lsp_info,
            undercurl = true,
        },
        SpellRare = {
            sp = colors.__vscode_head,
            undercurl = true,
        },
        Search = {
            bg = colors.__vscode_replace_mode_background,
        },
        CurSearch = {
            bg = colors.__vscode_replace_mode_background,
        },
        IncSearch = {
            bg = colors.__vscode_replace_mode_background,
        },
        Substitute = {
            bg = colors.__vscode_replace_mode_background,
            bold = true,
        },
        Directory = {
            fg = colors.__vscode_wrapper_blue,
            bg = colors.__vscode_editor_background,
            bold = true,
        },
        Title = {
            fg = colors.__vscode_wrapper_blue,
            bold = true,
        },
        Winbar = {
            fg = colors.__vscode_variable,
        },
        Scrollbar = {
            bg = colors.__vscode_editor_completion_scrollview_background,
        },
        StatusLine = {
            fg = colors.__vscode_statusline_foreground,
            bg = colors.__vscode_statusline_background,
        },
        StatusLineNC = {
            bg = colors.__vscode_statusline_background,
        },
        SpecialKey = {
            fg = colors.__vscode_wrapper_blue,
        },
        -- FloatShadowThrough = {},
        -- FloatShadow = {},
        FloatBorder = { fg = colors.__vscode_window_separator },
        -- FloatTitle = {},
    }
end

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return vim.tbl_deep_extend("force", M.get_viml_highlight(conf, colors), M.get_syntax_highlight(conf, colors))
end

return M
