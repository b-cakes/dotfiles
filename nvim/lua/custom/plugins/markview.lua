local M = {
    "OXY2DEV/markview.nvim",
    lazy = false,
    -- ft = "markdown",
    dependencies = {
        -- You may not need this if you don't lazy load
        -- Or if the parsers are in your $RUNTIMEPATH
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons"
    }
}


function M.config()
    local markview = require("markview")
    local presets = require("markview.presets")

    markview.setup({
        modes = { "n", "i", "no", "c" }, -- Change these modes
        hybrid_modes = { "n", "i" },     -- Uses this feature on

        callbacks = {

            on_enable = function (_, win)
                vim.wo[win].conceallevel = 2;
                vim.wo[win].concealcursor = "nc";
            end,

            on_mode_change = function(buf, win, mode)
                vim.wo[win].conceallevel = 2;
                vim.wo[win].concealcursor = "nc";
                -- Stuff to do when mode changes(while
                -- the plugin is enabled)
            end
        },

        -- headings = presets.headings.glow_labels,

        headings = {
            enable = true,
            shift_width = 0,

            heading_1 = {
                style = "label",
                hl = "@markup.heading.1",
                padding_left = " ",
                padding_right = " ",
                icon = "",
                sign = "",
            },

            heading_2 = {
                style = "label",
                hl = "@markup.heading.2",
                padding_left = " ",
                padding_right = " ",
                icon = "",
                sign = "",
            },

            heading_3 ={
                style = "label",
                hl = "@markup.heading.3",
                padding_left = " ",
                padding_right = " ",
                icon = "",
                sign = "",
            },

            heading_4 = {
                style = "label",
                hl = "@markup.heading.4",
                padding_left = " ",
                padding_right = " ",
                icon = "",
                sign = "",
            },

            heading_5 = {
                style = "label",
                hl = "@markup.heading.5",
                padding_left = " ",
                padding_right = " ",
                icon = "",
                sign = "",
            },

            heading_6 = {
                style = "label",
                hl = "@markup.heading.6",
                padding_left = " ",
                padding_right = " ",
                icon = "",
                sign = "",
            },

        },


        code_blocks = {
            enable = true,

            style = "language",
            hl = "dark",

            position = "overlay",

            min_width = 60,
            pad_amount = 3,

            language_names = {
                { "py", "python" },
                { "cpp", "C++" }
            },
            language_direction = "right",

            sign = false, sign_hl = nil
        },

        checkboxes = {
            enable = false,
            checked = { text = "" },
            unchecked = { text = "󰄱" },
            custom = {
                {
                    match = "D",
                    text = "󰃵",
                    hl = "Special",
                },
            },
        },

        links = {
            enable = true,

            --- Configuration for normal links
            hyperlinks = {
                enable = true,

                --- When true, link texts that start with an emoji
                --- won't have an icon in front of them.
                ---@type boolean
                __emoji_link_compatability = true,

                --- Icon to show.
                ---@type string?
                icon = "󰌷 ",

                --- Highlight group for the "icon".
                ---@type string?
                hl = "MarkviewHyperlink",

                --- Configuration for custom links.
                custom = {
                    {
                        --- Pattern of the address.
                        ---@type string
                        match_string = "stackoverflow%.com",

                        --- Icon to show.
                        ---@type string?
                        icon = " ",

                        --- Highlight group for the icon
                        ---@type string?
                        hl = nil
                    },
                    { match_string = "stackexchange%.com", icon = " " },
                }
            },

            images = {
                enable = true,

                --- Icon to show.
                ---@type string?
                icon = "󰥶 ",

                --- Highlight group for the "icon".
                ---@type string?
                hl = "MarkviewImageLink",
            },

            internal_links = {
                enable = true,


                --- Icon to show.
                ---@type string?
                icon = "",

                --- Highlight group for the "icon".
                ---@type string?
                hl = "MarkviewHyperlink",

                --- Configuration for custom internal links
            }
        },

        list_items = {
            enable = true,
        },

        horizontal_rules = {
            enable = true,

            parts = {
                {
                    type = "repeating",

                    repeat_amount = 80,
                    text = "─",
                    hl = "Comment"
                }
            }
        }
    })

end

return M
