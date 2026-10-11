require("toggleterm").setup{
	size = 100,
	direction = "vertical",
	open_mapping = [[<C-\>]],
	float_opts = {
		border = 'single',
	},
	shade_terminals = false, 
	highlights = {
		Normal = {link = "TermBg"},
		NormalFloat = {link = "TermBg"},
		FloatBorder = {link = "TermBg"},
	}
}
