return {
    'arjunmahishi/flow.nvim',
    config = function ()
    end,
    vim.api.nvim_set_keymap('n', '<leader>rr', ':FlowRunFile<CR>', { desc = '[R]un [F]ile' }),
}
