vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.python3_host_prog = '/Library/Frameworks/Python.framework/Versions/3.11/bin/python3'

return {
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    config = function()
      -- This is where you modify the settings for lsp-zero
      -- Note: autocompletion settings will not take effect

      require('lsp-zero.settings').preset({})
    end
  },

  -- LSP
  {
    'neovim/nvim-lspconfig',
    cmd = 'LspInfo',
    event = {'BufReadPre', 'BufNewFile'},
    dependencies = {
      {'hrsh7th/cmp-nvim-lsp'},
      {'williamboman/mason-lspconfig.nvim'},
      {
        'williamboman/mason.nvim',
        build = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      -- {'jose-elias-alvarez/null-ls.nvim'},
      {'onsails/lspkind.nvim'},
    },
    config = function()
      -- This is where all the LSP shenanigans will live

      require('mason').setup({
        ui = {
          border = 'rounded',
        }
      })

      -- require("mason-null-ls").setup({
      --   ensure_installed = {
      --     -- Opt to list sources here, when available in mason.
      --   },
      --   automatic_installation = false,
      --   handlers = {},
      -- })

      -- local null_ls = require('null-ls')
      --
      -- null_ls.setup({
      --   sources = {
      --     -- Anything not supported by mason.
      --     null_ls.builtins.formatting.ruff,
      --     null_ls.builtins.diagnostics.ruff,
      --   }
      -- })

      local lsp = require('lsp-zero')

---@diagnostic disable-next-line: unused-local
      lsp.on_attach(function(client, bufnr)
        lsp.default_keymaps({buffer = bufnr})
        local nmap = function(keys, func, desc)
          if desc then
            desc = 'LSP: ' .. desc
          end

          vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
        end

        nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
        nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')

        nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
        nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
        nmap('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
        nmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')
        nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
        nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

        -- See `:help K` for why this keymap
        nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
        nmap('gs', vim.lsp.buf.signature_help, 'Signature Documentation')

        -- Lesser used LSP functionality
        nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
        nmap('<leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
        nmap('<leader>wr', vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove Folder')
        nmap('<leader>wl', function()
          print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, '[W]orkspace [L]ist Folders')

        -- Create a command `:Format` local to the LSP buffer
        vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
          vim.lsp.buf.format()
        end, { desc = 'Format current buffer with LSP' })
      end)


      lsp.set_sign_icons({
        error = '✘',
        warn = '▲',
        hint = '⚑',
        info = '»'
      })

      -- (Optional) Configure lua language server for neovim
      require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

      -- (ruff_lsp)
      require('lspconfig').ruff_lsp.setup({
        init_options = {
          settings = {
            args = {},
          },
        },
      })


      lsp.setup()
      -- Make sure you setup `cmp` after lsp-zero


      local cmp = require('cmp')
      local lspkind = require('lspkind')

      cmp.setup({
        formatting = {
          -- changing the order of fields so the icon is the first

          -- here is where the change happens
          format = lspkind.cmp_format({
            mode = 'symbol_text',
            -- The function below will be called before any actual modifications from lspkind
            -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
            before = function (entry, vim_item)
              return vim_item
            end
          })
        }
      })
    end
  }
}

