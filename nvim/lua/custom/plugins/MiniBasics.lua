-- Set highlight on search
vim.o.hlsearch = false

-- Sync clipboard between OS and Neovim.
vim.o.clipboard = 'unnamedplus'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

return {
    'echasnovski/mini.basics',
    version = false,
    config = function ()
    require('mini.basics').setup({
        options = {
            basic = true,
            extra_ui = true,
            win_borders = 'bold',
        },
        mappings = {
            basic = true,
            option_toggle_prefix = [[\]],
            windows = true,
            move_with_alt = false,
        },
        autocommands = {
            basic = true,
            relnum_in_visual_mode = false,
        },
    })
    end
}
