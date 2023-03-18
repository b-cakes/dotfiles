-- My default colorscheme is currently set to tokyonight-storm.
return {
  { 'AlexvZyl/nordic.nvim', name = 'nordic' },

  -- List of other installed colorschemes:
  { 'folke/tokyonight.nvim',
    name = 'tokyonight',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'tokyonight-storm'
    end,
  },

  { 'EdenEast/nightfox.nvim', name = 'nightfox' },
  { "catppuccin/nvim", name = "catppuccin" },
  { 'rose-pine/neovim', name = 'rose-pine' },
}
