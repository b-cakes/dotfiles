return {
  { 'AlexvZyl/nordic.nvim',
    name = 'nordic',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'nordic'
    end,
  },
  { 'folke/tokyonight.nvim', name = 'tokyonight' },
  { 'EdenEast/nightfox.nvim', name = 'nightfox' },
  { "catppuccin/nvim",       name = "catppuccin" },
  { 'rose-pine/neovim',      name = 'rose-pine' },
}
