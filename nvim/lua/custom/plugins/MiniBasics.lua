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

return {
    'echasnovski/mini.basics',
    version = false,
    config = function ()
    require('mini.basics').setup({
        options = {
            win_borders = 'bold',
        },
        mappings = {
            windows = true,
        },
        autocommands = {
            relnum_in_visual_mode = true,
        },
    })
    end
}
