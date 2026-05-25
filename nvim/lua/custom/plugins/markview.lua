local M = {
    "OXY2DEV/markview.nvim",
    lazy = false,

    -- Completion for `blink.cmp`
    dependencies = { "saghen/blink.cmp" },
}
--
--
function M.config()
    local markview = require("markview")
    local presets = require("markview.presets")

    markview.setup({
	markdown = {
	    headings = presets.headings.glow,
	    horizontal_rules = presets.horizontal_rules.thin
	},
    })
end

return M
