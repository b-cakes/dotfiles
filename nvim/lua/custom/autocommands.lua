-- alpha dashboard
local alpha_group = vim.api.nvim_create_augroup("alpha", { clear = true })

-- disable cursorline in alpha dashboard
vim.api.nvim_create_autocmd("FileType", {
	pattern = "alpha",
	callback = function()
		vim.opt_local.cursorline = false
	end,
	group = alpha_group,
})

vim.api.nvim_create_autocmd("WinLeave", {
	command = "set nocursorline"
})

vim.api.nvim_create_autocmd("WinEnter", {
	pattern = "*",
	callback = function()
		if vim.bo.filetype == "alpha" then
			vim.opt_local.cursorline = false
		else
			vim.opt_local.cursorline = true
		end
	end,
	group = alpha_group,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		vim.opt_local.textwidth = 120
		vim.opt_local.wrap = true
	end
})

-- creating dark background windows for Telescope when using the randomhue cmd from mini.hues
vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "randomhue",
	command = "hi link TelescopeNormal NormalFloat | hi link TelescopePromptNormal NormalFloat",
})
