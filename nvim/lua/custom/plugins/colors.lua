return { { 'folke/tokyonight.nvim',
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'tokyonight'
  end,
},
  { 'EdenEast/nightfox.nvim' },
  { "catppuccin/nvim",       name = "catppuccin" },
  { 'rose-pine/neovim',      name = 'rose-pine' },
  { 'AlexvZyl/nordic.nvim',  name = 'nordic' },
}
