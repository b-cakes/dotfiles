return {
  "ibhagwan/fzf-lua",

  lazy = false,

  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },

  config = function()
    -- calling `setup` is optional for customization
    require("fzf-lua").setup({

      "default-title",

      winopts = {
        border = "empty",
        preview = {
          title_pos = "center",
          scrollbar = "border",
          scrollchars = { '│', '' },
        }

      },
      hls = {
        border = "NormalFloat",
        title = "Search",
        preview_normal = "ColorColumn",
        preview_border = "ColorColumn",
        preview_title = "CurSearch",
        cursorline = "CursorLine",
      },

      fzf_colors = {
        ["fg"] = { "fg", "NormalFloat" },
        ["bg"] = { "bg", "NormalFloat" },
        ["hl"] = { "fg", "Identifier" },
        ["bg+"] = { "bg", "CursorLine" },
        ["hl+"] = { "fg", {"Constant"}, "bold", "underline" },
        ["info"] = { "fg", {"Macro"}, "italic" },
        ["prompt"] = { "fg", "Macro" },
        ["border"] = { "fg", "Normal" },
        ["separator"] = { "bg", "NormalFloat" },
        ["pointer"] = { "fg", "Special" },
        ["marker"] = { "fg", "Statement" },
        ["gutter"] = { "bg", "NormalFloat" },
      }

      -- fzf_colors = true,

    })

  end
}
