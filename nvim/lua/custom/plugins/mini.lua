return {

    {
        'echasnovski/mini.basics',
        version = false,
        config = function ()
            require('mini.basics').setup({
                options = { win_borders = 'single' },
                mappings = { windows = true },
            })
        end
    },

    {
        'echasnovski/mini.statusline',
        version = false,
        config = function ()
            require("mini.statusline").setup({})
        end
    },

    {
        'echasnovski/mini.pairs',
        version = false,
        config = function ()
            require('mini.pairs').setup({})
        end
    },

    {
        'echasnovski/mini.comment',
        version = false,
        config = function ()
            require('mini.comment').setup({})
        end
    },

    {
        'echasnovski/mini.cursorword',
        version = false,
        config = function ()
            require("mini.cursorword").setup({})
        end
    },

    {
        'echasnovski/mini.files',
        version = false,
        config = function ()
            require("mini.files").setup({})
        end
    },

    {
        'echasnovski/mini.surround',
        version = false,
        lazy = true,
        config = function ()
            require('mini.surround').setup({})
        end
    },

    {
        'echasnovski/mini.colors',
        version = false,
        config = function ()
            require('mini.colors').setup({})
        end
    },

    {
        'echasnovski/mini.hues',
        version = false,
        -- config = function ()
        --     require('mini.hues').setup({})
        -- end
    },
}
