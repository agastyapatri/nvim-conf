require("tokyonight").setup({
	style = "night", 
	styles = {
		functions = {bold = true}, 
	}
})



















vim.api.nvim_set_hl(0, "Cursor", {bg = '#00D203'})
vim.opt.guicursor = {"i:block-Cursor"}
vim.cmd.colorscheme("tokyonight-night")
