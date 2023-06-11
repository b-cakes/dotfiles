return {

    -- UI notifications
    { 'folke/noice.nvim',
        opts = {

            popupmenu = {
                kind_icons = true
            },

            lsp = {
                override = {
                    ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                    ["vim.lsp.util.stylize_markdown"] = true,
                    ["cmp.entry.get_documentation"] = true,
                },
                -- hover = {
                --   enabled = true,
                -- },
                -- signature = {
                --   enabled = true,
                -- },
            },
            -- you can enable a preset for easier configuration
            presets = {
                long_message_to_split = true, -- long messages will be sent to a split
                lsp_doc_border = true, -- add a border to hover docs and signature help
            },

            views = {
                cmdline_popup = {
                    position = {
                        row = 30,
                        col = "50%",
                    },
                    size = {
                        width = 60,
                        height = "auto",
                    },
                },
                popupmenu = {
                    relative = "editor",
                    position = {
                        row = 33,
                        col = "50%",
                    },
                    size = {
                        width = 60,
                        height = 10,
                    },
                    border = {
                        style = "rounded",
                        padding = { 0, 1 },
                    },
                    win_options = {
                        winhighlight = {
                            Normal = "Normal",
                            FloatBorder = "DiagnosticInfo",
                        },
                    },
                },
            },
        },
        dependencies = {
            { 'rcarriga/nvim-notify' },
            { 'MunifTanjim/nui.nvim' },
        },
    },
}
