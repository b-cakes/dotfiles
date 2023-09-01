return {
-- rgb(193 203 243)/
  { -- nordic  
    'AlexvZyl/nordic.nvim',
    name = 'nordic',
  },

  { -- kanagawa
    'rebelot/kanagawa.nvim',
    name = 'kanagawa',
  },

  { -- nightfox
    'EdenEast/nightfox.nvim',
    name = 'nightfox',
  },

  { -- catppuccin
    "catppuccin/nvim",
    name = "catppuccin",
  },

  { -- rose-pine
    'rose-pine/neovim',
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

    end,
  },
}
