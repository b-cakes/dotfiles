return {
  -- Set lualine as statusline
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "meuter/lualine-so-fancy.nvim",
    },
    opts = {
      options = {
        theme = "auto",
        component_separators = { left = " | ", right = " | "},
        section_separators = { left = "█ ", right = " █"  },
        globalstatus = true,
        refresh = {
          statusline = 100,
        },
        disabled_filetypes = { "alpha" }
      },
      sections = {
        lualine_a = {
          { "mode" },
        },
        lualine_b = {
          { "branch" },
          { "fancy_diff" },
          { "filename",
            filetype_names = { alpha = "Dashboard" },
          },
          { "fancy_diagnostics" },
        },
        lualine_c = {
        },
        lualine_x = {
          { "fancy_macro" },
        },
        lualine_y = {
          { "progress" },
          { "fancy_filetype", ts_icon = "" },
        },
        lualine_z = {
          { "fancy_lsp_servers" }
        },
      },

      winbar = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {
          { 'filename', path = 4 },
        },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
      },

      inactive_winbar = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {
          { 'filename', path = 4 },
        },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
      },
    },
  },

  {
    -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help indent_blankline.txt`
    opts = {
      char = '│',
      show_current_context = true,
      show_current_context_start = true,
    },
  },

  -- float/popup ui for code actions 
  {'stevearc/dressing.nvim'},

  -- UI notifications
  { 'folke/noice.nvim',
    opts = {

      popupmenu = {
        kind_icons = true
      },

      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
        -- hover = {
        --   enabled = true,
        -- },
        -- signature = {
        --   enabled = true,
        -- },
      },
      -- you can enable a preset for easier configuration
      presets = {
        long_message_to_split = true, -- long messages will be sent to a split
        lsp_doc_border = true, -- add a border to hover docs and signature help
      },

      views = {
        cmdline_popup = {
          position = {
            row = 30,
            col = "50%",
          },
          size = {
            width = 60,
            height = "auto",
          },
        },
        popupmenu = {
          relative = "editor",
          position = {
            row = 33,
            col = "50%",
          },
          size = {
            width = 60,
            height = 10,
          },
          border = {
            style = "rounded",
            padding = { 0, 1 },
          },
          win_options = {
            winhighlight = {
              Normal = "Normal",
              FloatBorder = "DiagnosticInfo",
            },
          },
        },
      },
    },
    dependencies = {
      { 'rcarriga/nvim-notify' },
      { 'MunifTanjim/nui.nvim' },
    },
  },
}
