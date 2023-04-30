return {
-- rgb(193 203 243)/
  { -- tokyonight
    'folke/tokyonight.nvim',
    priority = 1000,
    config = function ()
      require('tokyonight').setup({
        style = 'storm',
        styles = {
        },
        hide_inactive_statusline = true,
        lualine_bold = true,
        on_highlights = function(hl, c)
          local fg_pu = '#29a4bd'
          local bg_pu_select = '#2e3c64'
          local bg_tele = '#292e42'
          hl.Pmenu = {bg = bg_tele, fg = fg_pu}
          hl.PmenuSel = {bg = bg_pu_select}
          hl.TelescopeNormal = {bg = bg_tele}
          hl.NormalFloat = {bg = bg_tele}
          hl.FloatBorder = {bg = bg_tele, fg = fg_pu}
        end,
      })
      vim.cmd.colorscheme 'tokyonight'
    end,
  },

  { -- nordic  
    'AlexvZyl/nordic.nvim',
    lazy = true,
    name = 'nordic',
  },

  { -- kanagawa
    'rebelot/kanagawa.nvim',
    name = 'kanagawa',
    lazy = true,
  },

  { -- nightfox
    'EdenEast/nightfox.nvim',
    name = 'nightfox',
    lazy = true,
  },

  { -- catppuccin
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
  },

  { -- rose-pine
    'rose-pine/neovim',
    name = 'rose-pine',
    lazy = true,
  },
}
