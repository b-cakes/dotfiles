return {
  -- Fuzzy Finder Algorithm which requires local dependencies to be built.
  -- Only load if `make` is available. Make sure you have the system
  -- requirements installed.
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    -- NOTE: If you are having trouble with this installation,
    --       refer to the README for telescope-fzf-native for more instructions.
    build = 'make',
    cond = function()
      return vim.fn.executable 'make' == 1
    end,
  },

  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons"
    },
  },

  -- symbol picker, ':Telescope symbols' 
  { 'nvim-telescope/telescope-symbols.nvim' },

  -- [[ Configure Telescope ]]
  -- See `:help telescope` and `:help telescope.setup()`
  require("telescope").setup {
    extensions = {
      file_browser = {
        initial_mode = 'insert',
        hijack_netrw = true,
        hidden = true,
        -- TODO: add which_key type menu
      },

      fzf = {
        fuzzy = true,
        override_generic_sorther = true,
        override_file_sorter = true,
        case_mode = "smart_case",
      },
    },

    pickers = {

      find_files = {
        theme = "dropdown",
        initial_mode = 'normal',
        previewer = false,
        selection_caret = "󰜴 ",
        mappings = {
          i = { ["<C-y>"] = require('telescope.actions.layout').toggle_preview },
          n = { ["<C-y>"] = require('telescope.actions.layout').toggle_preview },
        },
      },

      buffers = {
        theme = "dropdown",
        initial_mode = 'normal',
        previewer = false,
        selection_caret = "󰜴 ",
        mappings = {
          i = { ["<C-y>"] = require('telescope.actions.layout').toggle_preview },
          n = { ["<C-y>"] = require('telescope.actions.layout').toggle_preview },
        },
      },

      help_tags = {
        theme = "dropdown",
        previewer = false,
        selection_caret = "󰜴 ",
        mappings = {
          i = { ["<C-y>"] = require('telescope.actions.layout').toggle_preview },
          n = { ["<C-y>"] = require('telescope.actions.layout').toggle_preview },
        },
      },

      grep_string = {
        selection_caret = "󰜴 ",
      },

      live_grep = { theme = "dropdown" },
    },

  },

  -- Enable telescope file_browser, if installed
  require("telescope").load_extension 'file_browser',

  -- Enable telescope fzf native, if installed
  pcall(require("telescope").load_extension, 'fzf'),

  -- See `:help telescope.builtin`
  vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' }),
  -- vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' }),
  vim.keymap.set('n', '<leader><space>', ':Telescope buffers theme=dropdown<CR>', { desc = '[ ] Find existing buffers' }),
  -- vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' }),
  vim.keymap.set('n', '<leader>sf', ':Telescope find_files theme=dropdown<CR>', { desc = '[S]earch [F]iles' }),
  -- vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' }),
  vim.keymap.set('n', '<leader>sh', ':Telescope help_tags theme=dropdown<CR>', { desc = '[S]earch [H]elp' }),
  vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' }),
  vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' }),
  vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' }),
  vim.keymap.set('n', '<leader>fm', ':Telescope file_browser theme=dropdown<CR>', { desc = '[F]ile [M]anager' }),
}
