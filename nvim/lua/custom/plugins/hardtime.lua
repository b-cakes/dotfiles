return {
  -- lazy.nvim
  {
    "m4xshen/hardtime.nvim",
    lazy = true,
    dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
    opts = {
      enabled = false,
    }
  },
}
