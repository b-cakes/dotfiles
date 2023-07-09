return {
  -- float/popup ui for code actions 
  {
    'stevearc/dressing.nvim',
    opts = {
      select = {
        telescope = require("telescope.themes").get_cursor({}),
      }
    }
  },
}
