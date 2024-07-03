local M = {
  "ibhagwan/fzf-lua",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
}

function M.config ()

  local fzf = require("fzf-lua")

    fzf.setup({

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
    })
end

return M
