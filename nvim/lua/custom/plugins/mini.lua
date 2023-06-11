-- Set highlight on search
vim.o.hlsearch = false

-- Sync clipboard between OS and Neovim.
vim.o.clipboard = 'unnamedplus'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

vim.opt.guicursor = 'i:block,i-r:blinkwait200-blinkon150-blinkoff100,'

vim.opt.relativenumber = true

vim.opt.scrolloff = 8

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
