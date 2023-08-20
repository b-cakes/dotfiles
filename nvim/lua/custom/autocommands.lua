-- alpha dashboard
local alpha_group = vim.api.nvim_create_augroup("alpha", { clear = true })
vim.api.nvim_create_autocmd("User", {
	group = alpha_group,
	pattern = "AlphaReady",
	command = "set laststatus=0 | set showtabline=0",
})
vim.api.nvim_create_autocmd("User", {
	group = alpha_group,
	pattern = "AlphaClosed",
	command = "set laststatus=3 | set showtabline=2",
})
