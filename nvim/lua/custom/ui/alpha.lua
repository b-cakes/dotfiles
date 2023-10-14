local M = {
	"goolord/alpha-nvim",
	enabled = true,
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = "VimEnter",
}

function M.config()
	local headers = require("custom.headers")
	-- local quotes = require("custom.quotes")
	local theme = require("alpha.themes.theta")

	math.randomseed(os.time())

	-- function to create multiple colors for the header
	local function apply_gradient_hl(text)
		local gradient = require("custom.utils").create_gradient("#c0979d", "#3e8fb0", #text)

		local lines = {}
		for i, line in ipairs(text) do
			local tbl = {
				type = "text",
				val = line,
				opts = {
					hl = "HeaderGradient" .. i,
					shrink_margin = false,
					position = "center",
				},
			}
			table.insert(lines, tbl)

			-- create hl group
			vim.api.nvim_set_hl(0, "HeaderGradient" .. i, { fg = gradient[i] })
		end

		return {
			type = "group",
			val = lines,
			opts = { position = "center" },
		}
	end

	-- selects a random header from lua/custom/headers.lua
	local function get_header(headers)
		local header_text = headers[math.random(#headers)]
		return apply_gradient_hl(header_text)
	end

	-- selects a random quote from lua/custom/quotes.lua
	-- local function get_footer(quotes, width)
	-- 	local quote_text = quotes[math.random(#quotes)]
	--
	-- 	local max_width = width or 35
	--
	-- 	local tbl = {}
	-- 	for _, text in ipairs(quote_text) do
	-- 		local padded_text = require("custom.utils").pad_string(text, max_width, "right")
	-- 		table.insert(tbl, { type = "text", val = padded_text, opts = { hl = "Comment", position = "center" } })
	-- 	end
	--
	-- 	return {
	-- 		type = "group",
	-- 		val = tbl,
	-- 		opts = {},
	-- 	}
	-- end

	-- Info section
	-- local function get_info()
	-- 	local lazy_stats = require("lazy").stats()
	-- 	local total_plugins = " " .. lazy_stats.loaded .. "/" .. lazy_stats.count .. " packages"
	-- 	local datetime = os.date(" %A %B %d")
	-- 	local version = vim.version()
	-- 	local nvim_version_info = "ⓥ " .. version.major .. "." .. version.minor .. "." .. version.patch
	--
	-- 	local info_string = datetime .. "  |  " .. total_plugins .. "  |  " .. nvim_version_info
	--
	-- 	return {
	-- 		type = "text",
	-- 		val = info_string,
	-- 		opts = {
	-- 			hl = "Delimiter",
	-- 			position = "center",
	-- 		},
	-- 	}
	-- end

	-- Links / tools
	local dashboard = require("alpha.themes.dashboard")
	local links = {
		type = "group",
		val = {
			dashboard.button("SPC m f", "  File Manager"),
			dashboard.button("l", "鈴 Lazy", "<cmd>Lazy<CR>"),
			dashboard.button("t", "  Telescope", "<cmd>Telescope<CR>"),
		},
		position = "center",
	}

	theme.config.layout = {
		{ type = "padding", val = 10 },
		get_header({ headers.ragnarok, headers.shrek }),
		{ type = "padding", val = 5 },
		links,
		-- { type = "padding", val = 1 },
		-- get_info(),
		-- { type = "padding", val = 3 },
		-- get_footer({ quotes.roar, quotes.path, quotes.loki, quotes.grimsley }, 50),
	}
	require("alpha").setup(theme.config)
end

return M
