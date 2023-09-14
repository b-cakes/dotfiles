return {
    -- UI for notifications, cmdline, search box, and hover/signature-help.
    { 'folke/noice.nvim',
        dependencies = {
            { 'rcarriga/nvim-notify' },
            { 'MunifTanjim/nui.nvim' },
        },
        opts = {
            lsp = {
                override = {
                    ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                    ["vim.lsp.util.stylize_markdown"] = true,
                    ["cmp.entry.get_documentation"] = true,
                },
            },
            health = {
                checker = false,
            },
            -- you can enable a preset for easier configuration
            presets = {
                bottom_search = true,
                lsp_doc_border = true, -- add a border to hover docs and signature help
            },
            cmdline = {
                view = "cmdline",
            }
        },
    },
}
