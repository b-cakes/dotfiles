-- lazy.nvim package manager
--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- NOTE: The 'require('lazy').setup('custom.plugins')' below 
-- automatically adds your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
-- For additional information see: https://github.com/folke/lazy.nvim#-structuring-your-plugins
require('lazy').setup({
	{ import = 'custom.plugins' },
	-- { import = 'custom.ui' },
})
