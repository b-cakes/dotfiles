return {
-- rgb(193 203 243)/
  { -- nordic  
    'AlexvZyl/nordic.nvim',
    lazy = true,
    name = 'nordic',
  },

  { -- kanagawa
    'rebelot/kanagawa.nvim',
    lazy = true,
    name = 'kanagawa',
  },

  { -- nightfox
    'EdenEast/nightfox.nvim',
    lazy = true,
    name = 'nightfox',
  },

  { -- catppuccin
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
  },

  { -- rose-pine
    'rose-pine/neovim',
    priority = 1000,
    name = 'rose-pine',
    config = function ()
      require('rose-pine').setup({
        variant = 'moon',
        bold_vert_split = true,
        dim_nc_background = true,
        groups = {
          border = 'foam',
        },
      })
      vim.cmd.colorscheme('rose-pine')
    end,
  },
}
