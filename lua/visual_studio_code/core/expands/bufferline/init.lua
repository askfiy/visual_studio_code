local filetype_icons = require("visual_studio_code.core.expands.bufferline.filetype_icons")

local M = {}

function M.get_highlight(conf, colors)
    return vim.tbl_deep_extend("force", {
        BufferLineFill = {
            bg = colors.__vscode_local_background,
        },
        BufferLineTruncMarker = {
            fg = colors.__vscode_inactive_table_foreground,
            bg = colors.__vscode_onactive_table_background ,
        },
        BufferLineBufferSelected = {
            fg = colors.__vscode_onactive_table_foreground,
            bg = colors.__vscode_onactive_table_background,
        },
        BufferLineBackground = {
            fg = colors.__vscode_inactive_table_foreground,
            bg = colors.__vscode_inactive_table_background,
        },
        BufferLineBufferVisible = {
            fg = colors.__vscode_inactive_table_foreground,
            bg = colors.__vscode_inactive_table_background,
        },
        BufferLineIndicatorSelected = {
            fg = colors.__vscode_inactive_table_foreground,
            bg = colors.__vscode_onactive_table_background,
        },
        BufferLineIndicator = {
            fg = colors.__vscode_inactive_table_foreground,
            bg = colors.__vscode_inactive_table_background,
        },
        BufferLineIndicatorVisible = {
            fg = colors.__vscode_inactive_table_foreground,
            bg = colors.__vscode_inactive_table_background,
        },
        BufferLineSeparatorSelected = {
            fg = colors.__vscode_onactive_table_background,
            bg = colors.__vscode_onactive_table_background,
        },
        BufferLineSeparator = {
            fg = colors.__vscode_onactive_table_background,
            bg = colors.__vscode_inactive_table_background,
        },
        BufferLineSeparatorVisible = {
            fg = colors.__vscode_onactive_table_background,
            bg = colors.__vscode_inactive_table_background,
        },
        BufferLineCloseButtonSelected = {
            fg = colors.__vscode_onactive_table_foreground,
            bg = colors.__vscode_onactive_table_background,
        },
        BufferLineCloseButton = {
            fg = colors.__vscode_inactive_table_foreground,
            bg = colors.__vscode_inactive_table_background,
        },
        BufferLineCloseButtonVisible = {
            fg = colors.__vscode_inactive_table_foreground,
            bg = colors.__vscode_inactive_table_background,
        },
        BufferLineModifiedSelected = {
            fg = colors.__vscode_onactive_table_foreground,
            bg = colors.__vscode_onactive_table_background,
        },
        BufferLineModified = {
            fg = colors.__vscode_inactive_table_foreground,
            bg = colors.__vscode_inactive_table_background,
        },
        BufferLineModifiedVisible = {
            fg = colors.__vscode_inactive_table_foreground,
            bg = colors.__vscode_inactive_table_background,
        },
        BufferLineNumbersSelected = {
            fg = colors.__vscode_onactive_table_foreground,
            bg = colors.__vscode_onactive_table_background,
        },
        BufferLineNumbers = {
            fg = colors.__vscode_inactive_table_foreground,
            bg = colors.__vscode_inactive_table_background,
        },
        BufferLineNumbersVisible = {
            fg = colors.__vscode_inactive_table_foreground,
            bg = colors.__vscode_inactive_table_background,
        },
        BufferLinePickSelected = {
            fg = colors.__vscode_lsp_error,
            bg = colors.__vscode_onactive_table_background,
            bold = true,
        },
        BufferLinePick = {
            fg = colors.__vscode_lsp_error,
            bg = colors.__vscode_inactive_table_background,
            bold = true,
        },
        BufferLinePickVisible = {
            fg = colors.__vscode_lsp_error,
            bg = colors.__vscode_inactive_table_background,
            bold = true,
        },
        BufferLineTabSelected = {
            fg = colors.__vscode_onactive_table_foreground,
            bg = colors.__vscode_local_background,
        },

        BufferLineTab = {
            fg = colors.__vscode_inactive_table_foreground,
            bg = colors.__vscode_local_background,
        },

        BufferLineTabSeparatorSelected = {
            fg = colors.__vscode_local_background,
            bg = colors.__vscode_local_background,
        },

        BufferLineTabSeparator = {
            fg = colors.__vscode_local_background,
            bg = colors.__vscode_local_background,
        },

        BufferLineTabClose = {
            bg = colors.__vscode_local_background,
            fg = colors.__vscode_lsp_error,
            bold = true,
        },

        BufferlineDuplicateSelected = {
            fg = colors.__vscode_onactive_table_foreground,
            bg = colors.__vscode_onactive_table_background,
        },
        BufferlineDuplicate = {
            fg = colors.__vscode_inactive_table_foreground,
            bg = colors.__vscode_inactive_table_background,
        },
        BufferlineDuplicateVisible = {
            fg = colors.__vscode_inactive_table_foreground,
            bg = colors.__vscode_inactive_table_background,
        },

        BufferLineHintSelected = {
            fg = colors.__vscode_lsp_hint,
            bg = colors.__vscode_onactive_table_background,
        },
        BufferLineHint = {
            fg = colors.__vscode_inactive_table_foreground,
            bg = colors.__vscode_inactive_table_background,
        },
        BufferLineHintVisible = {
            fg = colors.__vscode_inactive_table_foreground,
            bg = colors.__vscode_inactive_table_background,
        },

        BufferLineInfoSelected = {
            fg = colors.__vscode_lsp_info,
            bg = colors.__vscode_onactive_table_background,
        },
        BufferLineInfo = {
            fg = colors.__vscode_inactive_table_foreground,
            bg = colors.__vscode_inactive_table_background,
        },
        BufferLineInfoVisible = {
            fg = colors.__vscode_inactive_table_foreground,
            bg = colors.__vscode_inactive_table_background,
        },

        BufferLineWarningSelected = {
            fg = colors.__vscode_lsp_warn,
            bg = colors.__vscode_onactive_table_background,
        },
        BufferLineWarning = {
            fg = colors.__vscode_inactive_table_foreground,
            bg = colors.__vscode_inactive_table_background,
        },
        BufferLineWarningVisible = {
            fg = colors.__vscode_inactive_table_foreground,
            bg = colors.__vscode_inactive_table_background,
        },

        BufferLineErrorSelected = {
            fg = colors.__vscode_lsp_error,
            bg = colors.__vscode_onactive_table_background,
        },
        BufferLineError = {
            fg = colors.__vscode_inactive_table_foreground,
            bg = colors.__vscode_inactive_table_background,
        },
        BufferLineErrorVisible = {
            fg = colors.__vscode_inactive_table_foreground,
            bg = colors.__vscode_inactive_table_background,
        },

        BufferLineHintDiagnosticSelected = {
            fg = colors.__vscode_lsp_hint,
            bg = colors.__vscode_onactive_table_background,
        },
        BufferLineHintDiagnostic = {
            fg = colors.__vscode_inactive_table_foreground,
            bg = colors.__vscode_inactive_table_background,
        },
        BufferLineHintDiagnosticVisible = {
            fg = colors.__vscode_inactive_table_foreground,
            bg = colors.__vscode_inactive_table_background,
        },

        BufferLineInfoDiagnosticSelected = {
            fg = colors.__vscode_lsp_info,
            bg = colors.__vscode_onactive_table_background,
        },
        BufferLineInfoDiagnostic = {
            fg = colors.__vscode_inactive_table_foreground,
            bg = colors.__vscode_inactive_table_background,
        },
        BufferLineInfoDiagnosticVisible = {
            fg = colors.__vscode_inactive_table_foreground,
            bg = colors.__vscode_inactive_table_background,
        },

        BufferLineWarningDiagnosticSelected = {
            fg = colors.__vscode_lsp_warn,
            bg = colors.__vscode_onactive_table_background,
        },
        BufferLineWarningDiagnostic = {
            fg = colors.__vscode_inactive_table_foreground,
            bg = colors.__vscode_inactive_table_background,
        },
        BufferLineWarningDiagnosticVisible = {
            fg = colors.__vscode_inactive_table_foreground,
            bg = colors.__vscode_inactive_table_background,
        },

        BufferLineErrorDiagnosticSelected = {
            fg = colors.__vscode_lsp_error,
            bg = colors.__vscode_onactive_table_background,
        },
        BufferLineErrorDiagnostic = {
            fg = colors.__vscode_inactive_table_foreground,
            bg = colors.__vscode_inactive_table_background,
        },
        BufferLineErrorDiagnosticVisible = {
            fg = colors.__vscode_inactive_table_foreground,
            bg = colors.__vscode_inactive_table_background,
        },
    }, M.get_fileicons_highlights(conf, colors))
end

---@diagnostic disable-next-line: unused-local
---@diagnostic disable-next-line: unused-local
function M.get_fileicons_highlights(conf, colors)
    local ok, module = pcall(require, "nvim-web-devicons")
    local hl_groups = {}

    if ok then
        table.insert(filetype_icons, "Default")

        for _, name in ipairs(filetype_icons) do
            ---@diagnostic disable-next-line: undefined-field
            local icon_name = name:lower()

            local _, fg = module.get_icon_color(icon_name)
            fg = fg or colors.__vscode_onactive_table_foreground

            hl_groups[string.format("BufferlineDevIcon%s", name)] =
                { fg = colors.__vscode_inactive_table_foreground, bg = colors.__vscode_inactive_table_background }
            hl_groups[string.format("BufferlineDevIcon%sInactive", name)] =
                { fg = colors.__vscode_inactive_table_foreground, bg = colors.__vscode_inactive_table_background }

            hl_groups[string.format("BufferlineDevIcon%sSelected", name)] =
                { fg = fg, bg = colors.__vscode_onactive_table_background }
        end
    end

    return hl_groups
end
return M
