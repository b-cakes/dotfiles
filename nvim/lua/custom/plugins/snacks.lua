return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
		notifier = {
			enabled = true,
			style = "compact",
		},

		-- zen = {
		-- 	enabled = true,
		-- 	toggles = {
		-- 		dim = false,
		-- 	},
		-- 	show = {
		-- 		statusline = true,
		-- 	},
		--
		--
		-- },

		-- styles = {
		-- 	zen = {
		-- 		{
		-- 			enter = true,
		-- 			fixbuf = false,
		-- 			minimal = false,
		-- 			width = 120,
		-- 			height = 0,
		-- 			backdrop = { transparent = false },
		-- 			keys = { q = false },
		-- 			zindex = 40,
		-- 			wo = {
		-- 				winhighlight = "NormalFloat:Normal",
		-- 			},
		-- 		}
		-- 	}
		-- }
	},
}
