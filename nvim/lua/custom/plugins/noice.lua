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
                    position = {
                        row = "0%",
                        col = "100%",
                    },
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
                    ["vim.lsp.util.convert_input_to_markdown_lines"] = false,
                    ["vim.lsp.util.stylize_markdown"] = false,
                    ["cmp.entry.get_documentation"] = false,
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
                lsp_doc_border = false, -- add a border to hover docs and signature help
            },
        },
    },
}
