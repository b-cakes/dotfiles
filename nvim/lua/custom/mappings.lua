vim.api.nvim_set_keymap('n', '<leader>rf', ':!python3 %<CR>', {desc = '[R]un [F]ile'})

vim.api.nvim_set_keymap('n', '<leader>mf', ':lua MiniFiles.open()<CR>', {desc = 'MiniFiles'})

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

vim.api.nvim_set_keymap('n', '<leader>od', ':cd /Users/johnharpt/journal<CR>', {desc = 'Go to Obsidian vault'})