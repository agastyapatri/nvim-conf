local fzf = require("fzf-lua")
fzf.setup({
	winopts = {
		height = 0.6,
		width  = 0.6,
		row    = 0.35,
		col    = 0.5,
		preview = {
			border = "border", 
			wrap = "nowrap", 
			default = "builtin", 
			layout = "flex", 
			flip_columns = 120,
		},
	},
	keymap = {
		builtin = {
			["<C-d>"] = "preview-page-down", 
			["<C-u>"] = "preview-page-up", 
		}, 
		fzf = {
			["ctrl-q"] = "select-all+accept",
		},
	}, 
	files = {
		fotmatter = "path.filename_first", 
	}, 
	grep = {
		rg_opts = "--column --line-number --no-heading --color=always --smart-case --hidden --glob '!.git/'",
	}, 
}) 

vim.keymap.set('n', '<leader>ff', fzf.files, {desc = "FZF [F]ind [F]iles"})
vim.keymap.set('n', '<leader>fr', fzf.oldfiles, {desc = "FZF [F]ind [R]ecent"})
vim.keymap.set('n', '<leader>gs', fzf.git_status, {desc = "FZF [G]it [S]tatus"})
vim.keymap.set('n', '<leader>fw', fzf.grep_cword, {desc = "FZF [C]urrent [W]ord"})
vim.keymap.set('n', '<leader>fb', fzf.buffers, {desc = "FZF [F]ind [B]uffers"})
vim.keymap.set('n', '<leader>lg', fzf.live_grep, { desc = '[F]ind by [G]rep' })
vim.keymap.set('n', '<leader>fk', fzf.keymaps, { desc = '[F]ind  [K]eymaps' })
vim.keymap.set('n', '<leader>fh', fzf.help_tags, { desc = '[F]ind  [H]elptags' })
vim.keymap.set('n', '<leader>fR', fzf.help_tags, { desc = 'Resume Last Search' })

