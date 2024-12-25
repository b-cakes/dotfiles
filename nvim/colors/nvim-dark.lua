-- Made with 'mini.colors' module of https://github.com/echasnovski/mini.nvim

if vim.g.colors_name ~= nil then vim.cmd('highlight clear') end
vim.g.colors_name = "nvim-dark2"

-- Highlight groups
local hi = vim.api.nvim_set_hl

hi(0, "@attribute.builtin", { link = "Special" })
hi(0, "@character.special", { link = "SpecialChar" })
hi(0, "@comment.error", { link = "DiagnosticError" })
hi(0, "@comment.note", { link = "DiagnosticInfo" })
hi(0, "@comment.todo", { link = "Todo" })
hi(0, "@comment.warning", { link = "DiagnosticWarn" })
hi(0, "@constant.builtin", { link = "Special" })
hi(0, "@diff.delta", { link = "Changed" })
hi(0, "@diff.minus", { link = "Removed" })
hi(0, "@diff.plus", { link = "Added" })
hi(0, "@function.builtin", { link = "Special" })
hi(0, "@lsp.mod.deprecated", { link = "DiagnosticDeprecated" })
hi(0, "@lsp.type.class", { link = "@type" })
hi(0, "@lsp.type.comment", { link = "@comment" })
hi(0, "@lsp.type.decorator", { link = "@attribute" })
hi(0, "@lsp.type.enum", { link = "@type" })
hi(0, "@lsp.type.enumMember", { link = "@constant" })
hi(0, "@lsp.type.event", { link = "@type" })
hi(0, "@lsp.type.function", { link = "@function" })
hi(0, "@lsp.type.interface", { link = "@type" })
hi(0, "@lsp.type.keyword", { link = "@keyword" })
hi(0, "@lsp.type.macro", { link = "@constant.macro" })
hi(0, "@lsp.type.method", { link = "@function.method" })
hi(0, "@lsp.type.modifier", { link = "@type.qualifier" })
hi(0, "@lsp.type.namespace", { link = "@module" })
hi(0, "@lsp.type.number", { link = "@number" })
hi(0, "@lsp.type.operator", { link = "@operator" })
hi(0, "@lsp.type.parameter", { link = "@variable.parameter" })
hi(0, "@lsp.type.property", { link = "@property" })
hi(0, "@lsp.type.regexp", { link = "@string.regexp" })
hi(0, "@lsp.type.string", { link = "@string" })
hi(0, "@lsp.type.struct", { link = "@type" })
hi(0, "@lsp.type.type", { link = "@type" })
hi(0, "@lsp.type.typeParameter", { link = "@type.definition" })
hi(0, "@lsp.type.variable", { link = "@variable" })
hi(0, "@markup.heading", { link = "Title" })
hi(0, "@markup.heading.1", { fg = "NvimLightCyan", bg = "NvimDarkGrey3" })
hi(0, "@markup.heading.2", { fg = "NvimLightGreen", bg = "NvimDarkGrey3" })
hi(0, "@markup.heading.3", { bg = "NvimDarkGrey3" })
hi(0, "@markup.heading.4", { bg = "NvimDarkGrey3" })
hi(0, "@markup.heading.5", { bg = "NvimDarkGrey3" })
hi(0, "@markup.heading.6", { bg = "NvimDarkGrey3" })
hi(0, "@markup.link", { link = "Underlined" })
hi(0, "@module.builtin", { link = "Special" })
hi(0, "@number.float", { link = "Float" })
hi(0, "@punctuation.special", { link = "Special" })
hi(0, "@string.escape", { link = "@string.special" })
hi(0, "@string.regexp", { link = "@string.special" })
hi(0, "@string.special", { link = "SpecialChar" })
hi(0, "@string.special.url", { link = "Underlined" })
hi(0, "@tag.builtin", { link = "Special" })
hi(0, "@type.builtin", { link = "Special" })
hi(0, "@variable.builtin", { link = "Special" })
hi(0, "@variable.parameter.builtin", { link = "Special" })
hi(0, "CccHighlighterfce094", { bg = "#fce094", fg = "#000000" })
hi(0, "DressingSelectIdx", { link = "Special" })
hi(0, "FzfLuaBufFlagAlt", { fg = "#98f5ff" })
hi(0, "FzfLuaBufFlagCur", { fg = "#ff4040" })
hi(0, "FzfLuaBufName", { fg = "#ffbbff" })
hi(0, "FzfLuaBufNr", { fg = "#ffebcd" })
hi(0, "FzfLuaHeaderBind", { fg = "#ffebcd" })
hi(0, "FzfLuaHeaderText", { fg = "#ff4040" })
hi(0, "FzfLuaLiveSym", { fg = "#ff4040" })
hi(0, "FzfLuaPathColNr", { fg = "#98f5ff" })
hi(0, "FzfLuaPathLineNr", { fg = "#90ee90" })
hi(0, "FzfLuaTabMarker", { bold = true, fg = "#ffebcd" })
hi(0, "FzfLuaTabTitle", { bold = true, fg = "#b0e2ff" })
hi(0, "GitSignsStagedAdd", { fg = "#597b60" })
hi(0, "GitSignsStagedAddLn", { bg = "#005523", fg = "#77787c" })
hi(0, "GitSignsStagedAddNr", { fg = "#597b60" })
hi(0, "GitSignsStagedChange", { fg = "#467c7b" })
hi(0, "GitSignsStagedChangeLn", { bg = "#4f5258", fg = "#77787c" })
hi(0, "GitSignsStagedChangeNr", { fg = "#467c7b" })
hi(0, "GitSignsStagedChangedelete", { fg = "#467c7b" })
hi(0, "GitSignsStagedChangedeleteLn", { bg = "#4f5258", fg = "#77787c" })
hi(0, "GitSignsStagedChangedeleteNr", { fg = "#467c7b" })
hi(0, "GitSignsStagedDelete", { fg = "#7f605c" })
hi(0, "GitSignsStagedDeleteNr", { fg = "#7f605c" })
hi(0, "GitSignsStagedTopdelete", { fg = "#7f605c" })
hi(0, "GitSignsStagedTopdeleteNr", { fg = "#7f605c" })
hi(0, "IndentBlanklineChar", { fg = "#4f5258", nocombine = true })
hi(0, "IndentBlanklineContextChar", { fg = "#e0e2ea", nocombine = true })
hi(0, "IndentBlanklineContextStart", { sp = "#e0e2ea", underline = true })
hi(0, "IndentBlanklineSpaceChar", { fg = "#4f5258", nocombine = true })
hi(0, "IndentBlanklineSpaceCharBlankline", { fg = "#4f5258", nocombine = true })
hi(0, "MiniCursorword", { underline = true })
hi(0, "NoiceFormatProgressDone", { bg = "#6b5300", fg = "#eef1f8" })
hi(0, "NoiceHiddenCursor", { blend = 100, nocombine = true })
hi(0, "Normal", { fg = "NvimLightGrey2", bg = "NvimDarkGrey2" })
hi(0, "NotifyDEBUGBorder", { fg = "#8b8b8b" })
hi(0, "NotifyDEBUGIcon", { fg = "#8b8b8b" })
hi(0, "NotifyDEBUGTitle", { fg = "#8b8b8b" })
hi(0, "NotifyERRORBody2", { bg = "#14161b", fg = "#1c1e23" })
hi(0, "NotifyERRORBorder", { fg = "#8a1f1f" })
hi(0, "NotifyERRORBorder2", { fg = "#19161b" })
hi(0, "NotifyERRORIcon", { fg = "#f70067" })
hi(0, "NotifyERRORIcon2", { fg = "#1d151e" })
hi(0, "NotifyERRORTitle", { fg = "#f70067" })
hi(0, "NotifyERRORTitle2", { fg = "#1d151e" })
hi(0, "NotifyINFOBody4", { bg = "#14161b", fg = "#1c1e23" })
hi(0, "NotifyINFOBorder", { fg = "#4f6752" })
hi(0, "NotifyINFOBorder4", { fg = "#16191d" })
hi(0, "NotifyINFOIcon", { fg = "#a9ff68" })
hi(0, "NotifyINFOIcon4", { fg = "#1a1f1e" })
hi(0, "NotifyINFOTitle", { fg = "#a9ff68" })
hi(0, "NotifyINFOTitle4", { fg = "#1a1f1e" })
hi(0, "NotifyTRACEBorder", { fg = "#4f3552" })
hi(0, "NotifyTRACEIcon", { fg = "#d484ff" })
hi(0, "NotifyTRACETitle", { fg = "#d484ff" })
hi(0, "NotifyWARNBorder", { fg = "#79491d" })
hi(0, "NotifyWARNIcon", { fg = "#f79000" })
hi(0, "NotifyWARNTitle", { fg = "#f79000" })
hi(0, "incline__gui_bold", { bold = true })
hi(0, "incline__guibg_353b4c", { bg = "NvimDarkGrey2" })
hi(0, "incline__guibg_51a0cf__guifg_000000", { bg = "#51a0cf", fg = "#000000" })
hi(0, "Statusline", { link = "NormalFloat" })

-- Terminal colors
local g = vim.g

g.terminal_color_0 = "NvimDarkGrey1"
g.terminal_color_1 = "#ff4040"
g.terminal_color_2 = "#90ee90"
g.terminal_color_3 = "#fce094"
g.terminal_color_4 = "#c4c6cd"
g.terminal_color_5 = "#ffbbff"
g.terminal_color_6 = "#98f5ff"
g.terminal_color_7 = "NvimLightGrey1"
g.terminal_color_8 = "NvimDarkGrey2"
g.terminal_color_9 = "#ff4040"
g.terminal_color_10 = "#90ee90"
g.terminal_color_11 = "#fce094"
g.terminal_color_12 = "#c4c6cd"
g.terminal_color_13 = "#ffbbff"
g.terminal_color_14 = "#98f5ff"
g.terminal_color_15 = "NvimLightGrey2"
