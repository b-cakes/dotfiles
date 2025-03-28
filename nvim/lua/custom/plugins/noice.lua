return {
    -- UI for notifications, cmdline, search box, and hover/signature-help.
    { 'folke/noice.nvim',
        dependencies = {
            { 'rcarriga/nvim-notify' },
            { 'MunifTanjim/nui.nvim' },
        },
        opts = {
            views = {
                cmdline_popup = {
                    border = {
                        style = "single",
                    },
                    filter_options = {},
                    win_options = {
                        winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
                    },
                },
            },

            lsp = {
                override = {
                    ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                    ["vim.lsp.util.stylize_markdown"] = true,
                    ["cmp.entry.get_documentation"] = true,
                },
                hover = {
                    enabled = false,
                },
                signature = {
                    enabled = false,
                },
            },
            health = {
                checker = true,
            },
            -- you can enable a preset for easier configuration
            presets = {
		command_palette = true,
                lsp_doc_border = true, -- add a border to hover docs and signature help
            },
        },
    },
}
