return {
    'arjunmahishi/flow.nvim',
    opts = {
        output = { buffer = true, split_cmd = 'split'}
    },
    vim.api.nvim_set_keymap('n', '<leader>rr', ':FlowRunFile<CR>', { desc = '[R]un [F]ile' }),
}
