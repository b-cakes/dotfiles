vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.python3_host_prog = '/Library/Frameworks/Python.framework/Versions/3.11/bin/python3'

return {
  {
    'neovim/nvim-lspconfig',
    cmp = 'LspInfo',
    event = { 'BufReadPre', 'BufNewFile' },

    config = function()
      vim.opt.signcolumn = 'yes'

      local lspconfig = require('lspconfig')
      -- This is where you enable features that only work
      -- if there is a language server active in the file
      vim.api.nvim_create_autocmd('LspAttach', {
        desc = 'LSP actions',
        callback = function(event)
          local opts = { buffer = event.buf }

          vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
          vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
          vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
          vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
          vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
          vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
          vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
          vim.keymap.set({ 'n', 'x' }, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
        end,
      })

      -- require("noice").setup {
      --   lsp = {
      --     -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
      --     override = {
      --       -- override the default lsp markdown formatter with Noice
      --       ["vim.lsp.util.convert_input_to_markdown_lines"] = false,
      --       -- override the lsp markdown formatter with Noice
      --       ["vim.lsp.util.stylize_markdown"] = false,
      --       -- override cmp documentation with Noice (needs the other options to work)
      --       ["cmp.entry.get_documentation"] = false,
      --     },
      --     hover = { enabled = false },     -- <-- HERE!
      --     signature = { enabled = false }, -- <-- HERE!
      --   },
      -- }

      -- lua language server for neovim
      lspconfig.lua_ls.setup({})
      lspconfig.pyright.setup({})
      lspconfig.ruff.setup({})
    end
  }
}
