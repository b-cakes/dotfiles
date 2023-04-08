return {

  -- Set lualine as statusline
  {
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = '|',
        section_separators = '',
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

  -- Better code action pop up menu.
  { 'weilbith/nvim-code-action-menu' },

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
        bottom_search = true, -- use a classic bottom cmdline for search
        command_palette = false, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false, -- add a border to hover docs and signature help
      },
      cmdline = {
        view = 'cmdline',
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
      sections = {'datetime', 'git', 'buffers'},
      initial_width = 50,
      hide_statusline = true,
      datetime = {
        clocks = { { name = 'Local'} },
      },
    },
  },

}