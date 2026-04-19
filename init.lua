--	OPTIONS
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.o.scrolloff = 10
vim.o.hlsearch = false
vim.o.background = "dark"
vim.opt.cursorline = true
vim.wo.relativenumber = true
vim.wo.number = true
vim.o.mouse = 'a'
vim.o.clipboard = 'unnamedplus'
vim.o.breakindent = true
vim.o.cindent = true 
vim.g.c_syntax_for_h = 1
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.wo.signcolumn = 'yes'
vim.o.updatetime = 50
vim.o.timeoutlen = 300
vim.o.completeopt = 'menuone,noselect'
vim.o.termguicolors = true
vim.opt.shell = "/bin/bash"
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })


-- DISABLING UNUSED BUILTINS 
local disabled_builtins = {
	"gzip", "zip", "tar", "shada_plugin", "tutor", "matchparen", "rplugin", "remote_plugins"
}
for _, plugin in pairs(disabled_builtins) do
	vim.g["loaded_" .. plugin] = 1
end

-- DISABLING UNUSED FILES 
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = false


--	INSTALLING THE LAZY PACKAGE MANAGER
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system {
		'git',
		'clone',
		'--filter=blob:none',
		'https://github.com/folke/lazy.nvim.git',
		'--branch=stable', -- latest stable release
		lazypath,
	}
end
vim.opt.rtp:prepend(lazypath)
require('lazy').setup({
	--	go to lua/plugins for the modules of all the installed plugins 
	spec = {
		import = 'plugins'
	},
	ui = {
		border = "double", 
		size = {
			width = 0.8,
			height = 0.8,
		},
	},
}, {}
)

--	LOADING PLUGIN CONFIGURATIONS
-- require("configs.tokyonight")
-- require("configs.kanso")
require("configs.retrobox")
require("configs.treesitter")
require("configs.toggleterm")
require("configs.telescope")
require("configs.nvim-tree")
require("configs.noice")
require("configs.mason")
-- require("configs.trouble")
-- require("configs.catppuccin")


-- local kanso_zen_red = "#c4746e"
-- local kanso_zen_black = "#0d060c"
-- vim.api.nvim_set_hl(0, "LazyBorder", {fg = kanso_zen_red, bg = kanso_zen_black})

--	KEYMAPS: tabs and splits
vim.keymap.set({"n", "v", "i"}, "<C-n>", vim.cmd.tabnew)
vim.keymap.set({"n", "v", "i"}, "<A-l>", vim.cmd.tabn)
vim.keymap.set({"n", "v", "i"}, "<A-h>", vim.cmd.tabp)
vim.keymap.set({"n", "v", "i"}, "<A-s>", vim.cmd.vsplit)
vim.keymap.set('n', '<leader>th', '<Cmd>-tabmove<CR>')
vim.keymap.set('n', '<leader>tl', '<Cmd>+tabmove<CR>')

-- LSP DIAGNOSTICS
vim.diagnostic.config({
	underline = true,
	signs=true,
	virtual_text = true,
	float = {
		border = 'rounded',
	},
})
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'LSP Code Actions' })

-- ENABLING LSP SERVERS ; TAKE A LOOK AT ~/.CONFIG/NVIM/LSP FOR MORE INFO 
vim.lsp.enable({'clangd', 'basedpyright', 'lua_ls', 'marksman', 'neocmakelsp'})
--	HIGHLIGHT ON YANK
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = '*',
})

if vim.g.neovide then
	vim.o.guifont = "JetBrainsMono Nerd Font:h10"
	vim.g.neovide_opacity = 1
	vim.g.neovide_normal_opacity = 1
	vim.g.neovide_padding_top = 8
	vim.g.neovide_padding_bottom = 8
	vim.g.neovide_padding_left = 10
	vim.g.neovide_padding_right = 10
	vim.g.neovide_cursor_animation_length =  0 
	vim.g.neovide_cursor_trail_size = 0.5
	vim.g.neovide_scroll_animation_length = 0.3
	vim.g.neovide_fullscreen = false
	vim.g.neovide_remember_window_size = true
	vim.g.neovide_window_decoration = false
	-- vim.g.neovide_maximized = true
	-- vim.g.neovide_fullscreen = true
	vim.g.neovide_refresh_rate = 120
	vim.g.neovide_refresh_rate_idle = 5
end

