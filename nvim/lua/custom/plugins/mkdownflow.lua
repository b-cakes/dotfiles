return {
	'jakewvincent/mkdnflow.nvim',
	config = function()
		require('mkdnflow').setup({
			modules = {
				bib = false,
				buffers = false,
				conceal = false,
				cursor = false,
				folds = true,
				foldtext = true,
				links = false,
				lists = true,
				maps = false,
				paths = false,
				tables = true,
				to_do = false,
				yaml = false,
				cmp = false,
				notebook = false,
			}})
	end
}
