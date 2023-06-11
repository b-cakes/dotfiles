return {

    {
        'echasnovski/mini.basics',
        version = false,
        config = function ()
            require('mini.basics').setup({
                options = { win_borders = 'single' },
                mappings = { windows = true },
                autocommands = { relnum_in_visual_mode = true },
            })
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
        lazy = true,
        config = function ()
            require('mini.colors').setup({})
        end
    },

    {
        'echasnovski/mini.hues',
        version = false,
        lazy = true,
        -- config = function ()
        --     require('mini.hues').setup({})
        -- end
    },
}
