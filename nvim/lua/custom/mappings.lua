-- Delete mini.basics save keymap.
vim.keymap.del('n', '<C-s>')

-- run python file
vim.api.nvim_set_keymap('n', '<leader>rf', ':!python3 %<CR>', {desc = '[R]un [F]ile'})

-- previous/next buffer
vim.api.nvim_set_keymap('n', '<C-h>', ':bprevious<CR>', {desc = 'previous buffer'})
vim.api.nvim_set_keymap('n', '<C-l>', ':bnext<CR>', {desc = 'next buffer'})

-- Telescope notify mapping
vim.api.nvim_set_keymap('n', '<leader>tn', ':Telescope notify<CR>', {desc = '[T]elescope [N]otify'})


-- open mini-files
vim.api.nvim_set_keymap('n', '<leader>mf', ':lua MiniFiles.open()<CR>', {desc = 'MiniFiles'})

-- Markview enable
vim.api.nvim_set_keymap('n', '<leader>me', ':Markview enable<CR>', {desc = 'Markview enable'})

-- Obsidian mappings
vim.keymap.set("n", "gf", function()
  if require("obsidian").util.cursor_on_markdown_link() then
    return "<cmd>ObsidianFollowLink<CR>"
  else
    return "gf"
  end
end, { noremap = false, expr = true })

vim.api.nvim_set_keymap('n', '<leader>on', ':ObsidianNew ', {desc = 'ObsidianNew'})
vim.api.nvim_set_keymap('n', '<leader>oq', ':ObsidianQuickSwitch<CR>', {desc = 'ObsidianQuickSwitch'})
vim.api.nvim_set_keymap('n', '<leader>os', ':ObsidianSearch<CR>', {desc = 'ObsidianSearch'})
vim.api.nvim_set_keymap('n', '<leader>ot', ':ObsidianTags<CR>', {desc = 'ObsidianTags'})
vim.api.nvim_set_keymap('n', '<leader>ol', ':ObsidianLinks<CR>', {desc = 'ObsidianLinks'})
vim.api.nvim_set_keymap('n', '<leader>ob', ':ObsidianBacklinks<CR>', {desc = 'ObsidianBacklinks'})

-- Noice mappings
vim.api.nvim_set_keymap('n', '<leader>nd', ':NoiceDismiss<CR>', {desc = 'NoiceDismiss'})
vim.api.nvim_set_keymap('n', '<leader>nf', ':NoiceFzf<CR>', {desc = 'NoiceFzf'})

-- fzf-lua.nvim mappings
vim.api.nvim_set_keymap('n', '<leader>ff', ':FzfLua<CR>', {desc = 'fzf builtin'})
vim.api.nvim_set_keymap('n', '<leader>fb', ':FzfLua buffers<CR>', {desc = 'fzf buffers'})

-- trouble.nvim mappings
vim.api.nvim_set_keymap('n', '<leader>td', ':Trouble diagnostics<CR>', {desc = 'Trouble diagnostics'})

