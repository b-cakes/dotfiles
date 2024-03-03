-- alpha dashboard
-- local alpha_group = vim.api.nvim_create_augroup("alpha", { clear = true })
-- vim.api.nvim_create_autocmd("User", {
-- 	group = alpha_group,
-- 	pattern = "AlphaReady",
-- 	command = "set laststatus=0 | set showtabline=0",
-- })
-- vim.api.nvim_create_autocmd("User", {
-- 	group = alpha_group,
-- 	pattern = "AlphaClosed",
-- 	command = "set laststatus=3",
-- })

vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function ()
		vim.opt_local.textwidth = 120
		vim.opt_local.wrap = true
	end
})

-- creating dark background windows for Telescope when using the randomhue cmd from mini.hues
vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "randomhue",
	command = "hi link TelescopeNormal NormalFloat | hi link TelescopePromptNormal NormalFloat",
})

vim.api.nvim_create_autocmd("WinLeave", {
	command = "set nocursorline"
})

vim.api.nvim_create_autocmd("WinEnter", {
	command = "set cursorline"
})
