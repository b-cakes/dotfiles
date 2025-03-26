vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- default colorscheme or fallback
vim.g.SCHEME = "tokyo-cat"

vim.api.nvim_create_autocmd("VimEnter", {
  nested = true,
  callback = function()
    pcall(vim.cmd.colorscheme, vim.g.SCHEME)
  end,
})

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function(params)
    vim.g.SCHEME = params.match
  end,
})

-- Set highlight on search
vim.o.hlsearch = false

-- Sync clipboard between OS and Neovim.
vim.o.clipboard = 'unnamedplus'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

vim.keymap.set('n', '<C-d>', '<C-d>zz0')
vim.keymap.set('n', '<C-u>', '<C-u>zz0')

vim.o.spell = true

vim.opt.guicursor = 'i:block,i-r:blinkwait200-blinkon150-blinkoff100,'

vim.opt.relativenumber = true

vim.opt.scrolloff = 8

vim.o.laststatus = 3

vim.o.cmdheight = 0

vim.o.conceallevel = 2

vim.o.concealcursor = 'nc'
