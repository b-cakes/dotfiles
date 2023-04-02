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
    },
    config = function()
      -- This is where all the LSP shenanigans will live

      require('mason').setup({
        ui = {
          border = 'rounded',
        }
      })

      local lsp = require('lsp-zero')


      lsp.on_attach(function(client, bufnr)
        lsp.default_keymaps({buffer = bufnr})
      end)


      lsp.set_sign_icons({
        error = '✘',
        warn = '▲',
        hint = '⚑',
        info = '»'
      })

      -- (Optional) Configure lua language server for neovim
      require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

      lsp.setup()
    end
  }
}
