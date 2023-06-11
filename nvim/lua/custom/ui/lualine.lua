
return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
            "meuter/lualine-so-fancy.nvim",
        },
        opts = {
            options = {
                theme = "auto",
                component_separators = { left = " | ", right = " | "},
                section_separators = { left = "█ ", right = " █"  },
                globalstatus = true,
                refresh = {
                    statusline = 100,
                },
                disabled_filetypes = { "alpha" }
            },
            sections = {
                lualine_a = {
                    { "mode" },
                },
                lualine_b = {
                    { "branch" },
                    { "fancy_diff" },
                    { "filename",
                        filetype_names = { alpha = "Dashboard" },
                    },
                    { "fancy_diagnostics" },
                },
                lualine_c = {
                },
                lualine_x = {
                    { "fancy_macro" },
                },
                lualine_y = {
                    { "progress" },
                    { "fancy_filetype", ts_icon = "" },
                },
                lualine_z = {
                    { "fancy_lsp_servers" }
                },
            },

            winbar = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {
                    { 'filename', path = 4 },
                },
                lualine_x = {},
                lualine_y = {},
                lualine_z = {}
            },

            inactive_winbar = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {
                    { 'filename', path = 4 },
                },
                lualine_x = {},
                lualine_y = {},
                lualine_z = {}
            },
        },
    },
}
