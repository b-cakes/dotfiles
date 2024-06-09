return {
  "ibhagwan/fzf-lua",

  lazy = false,

  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },

  config = function()
    -- calling `setup` is optional for customization
    require("fzf-lua").setup({
      "default-title",
      hls = {
        normal = "NormalFloat",
        border = "FloatBorder",
        preview_normal = "NormalFloat",
        preview_border = "FloatBorder",
        title = "IncSearch",
      },
    })
  end
}
