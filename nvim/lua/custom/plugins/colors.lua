return {
  -- default
  {
    'folke/tokyonight.nvim',
    name = 'tokyonight',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'tokyonight-storm'
    end,
  },

  -- List of other installed colorschemes:
  { 'AlexvZyl/nordic.nvim', name = 'nordic' },
  { 'rebelot/kanagawa.nvim', name = 'kanagawa' },
  { 'EdenEast/nightfox.nvim', name = 'nightfox' },
  { "catppuccin/nvim", name = "catppuccin" },
  { 'rose-pine/neovim', name = 'rose-pine' },
}
