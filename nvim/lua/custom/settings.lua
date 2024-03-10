vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- If using mini.colors colorscheme, use the vim.cmd.colorscheme command in this file.
vim.cmd.colorscheme('tokyo-cat')

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

vim.o.conceallevel = 1
