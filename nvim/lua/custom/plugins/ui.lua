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
        globalstatus = false,
        refresh = {
          statusline = 100,
        },
      },
      sections = {
        lualine_a = {
          { "mode" },
        },
        lualine_b = {
          { "branch" },
          { "fancy_diff" },
          { "filename" },
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
      }
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

  {'stevearc/dressing.nvim'},

  -- UI notifications
  { 'folke/noice.nvim',
    opts = {
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
        hover = {
          enabled = false,
        },
        signature = {
          enabled = false,
        },
      },
      -- you can enable a preset for easier configuration
      presets = {
        bottom_search = false, -- use a classic bottom cmdline for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false, -- add a border to hover docs and signature help
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
            winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
          },
        },
      },
    },
    dependencies = {
      { 'rcarriga/nvim-notify' },
      { 'MunifTanjim/nui.nvim' },
    },
  },

  -- Sidebar that displays the datetime, git status, and active buffers.
  {
    'sidebar-nvim/sidebar.nvim',
    opts = {
      sections = {
        'datetime',
        'buffers'
      },
      initial_width = 100,
      hide_statusline = false,
      datetime = {
        clocks = { { name = 'Local'} },
      },
    },
  },
}
