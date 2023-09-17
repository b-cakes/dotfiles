return {
	{ -- rose-pine
		'rose-pine/neovim',
		priority = 1000,
		name = 'rose-pine',
		config = function ()
			require('rose-pine').setup({
				variant = 'main',
				dim_nc_background = true,
				groups = {
					border = 'foam',
				},
			})
			vim.cmd.colorscheme('rose-pine')
		end,
	},
}
