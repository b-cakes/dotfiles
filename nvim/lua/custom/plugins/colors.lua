-- transparent background
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })

-- My default colorscheme is currently set to nordic.
return {
  { 'AlexvZyl/nordic.nvim',
    name = 'nordic',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'nordic'
    end,
  },

  -- List of other installed colorschemes:
  { 'folke/tokyonight.nvim', name = 'tokyonight' },
  { 'EdenEast/nightfox.nvim', name = 'nightfox' },
  { "catppuccin/nvim", name = "catppuccin" },
  { 'rose-pine/neovim', name = 'rose-pine' },
}
