return {
    {
        'michaelb/sniprun',
        build = 'bash ./install.sh',
        config = function ()
            require('sniprun').setup({
                display = {
                    'Terminal',
                },
            })
        end,
    },

    vim.keymap.set('n', '<leader>rf', ':%SnipRun<CR>', {desc = 'Run File'}),
}
