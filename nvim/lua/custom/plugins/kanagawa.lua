return {
  { -- kanagawa
    'rebelot/kanagawa.nvim',
    name = 'kanagawa',
    config = function ()
    require("kanagawa").setup({
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
    })
    end
  },
}

