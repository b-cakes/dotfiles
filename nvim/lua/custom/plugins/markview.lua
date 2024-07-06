return {
    "OXY2DEV/markview.nvim",
    lazy = true,
    ft = "markdown",
    dependencies = {
        -- You may not need this if you don't lazy load
        -- Or if the parsers are in your $RUNTIMEPATH
        "nvim-treesitter/nvim-treesitter",

        "nvim-tree/nvim-web-devicons"
    },
    opts = {

        headings = {
            shift_width = 0,
            heading_1 = {
                style = "label",
                hl = "@markup.heading.1",
                padding_left = " ",
                padding_right = " ",
                icon = "",
            },
            heading_2 = {
                style = "label",
                hl = "@markup.heading.2",
                padding_left = " ",
                padding_right = " ",
                icon = "",
            },
            heading_3 ={
                style = "label",
                hl = "@markup.heading.3",
                padding_left = " ",
                padding_right = " ",
                icon = "",
            },
            heading_4 = {
                style = "label",
                hl = "@markup.heading.4",
                padding_left = " ",
                padding_right = " ",
                icon = "",
            },
            heading_5 = {
                style = "label",
                hl = "@markup.heading.5",
                padding_left = " ",
                padding_right = " ",
                icon = "",
            },
            heading_6 = {
                style = "label",
                hl = "@markup.heading.6",
                padding_left = " ",
                padding_right = " ",
                icon = "",
            },
        },

        checkboxes = {
            enable = false,
        },

        list_items = {
            enable = false,
        },

        -- horizontal_rules = {
        --     -- position = "inline",
        --     parts = {
        --         {
        --             type = "text",
        --
        --             text = "─",
        --             hl = "rainbow6"
        --         }
        --     },
        --     -- parts = {
        --     --     type = "repeating",
        --     --     text = "─",
        --     --     repeat_amount = 120,
        --     --     hl = "Comment",
        --     --     direction = "left"
        --     -- },
        -- },
    }
}
