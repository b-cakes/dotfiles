return {
  -- These are all plugins with no configuration.

  -- -- Git related plugins
  -- { 'tpope/vim-fugitive' },
  -- { 'tpope/vim-rhubarb' },
  { 'tpope/vim-sleuth' },

  { 'folke/neodev.nvim' },

  -- Telescope loading
  { 'nvim-telescope/telescope.nvim', version = '*', dependencies = { 'nvim-lua/plenary.nvim' } },
  { 'nvim-telescope/telescope-fzf-native.nvim' },
  { 'nvim-telescope/telescope-file-browser.nvim' },
}
