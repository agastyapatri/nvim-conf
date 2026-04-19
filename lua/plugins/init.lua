return {
	{
		"mason-org/mason.nvim" },
	{	
		'tpope/vim-fugitive',
		event = 'VeryLazy',
	},
	{	
		'tpope/vim-rhubarb',
		event = 'VeryLazy',

	},
	-- 	COLORSCHEMES 
	{	
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{	
		"webhooked/kanso.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	-- {
	-- 	'f4z3r/gruvbox-material.nvim',
	-- 	-- name = 'gruvbox-material',
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	opts = {},
	-- },
	{	
		"catppuccin/nvim",
		name="catppuccin",
		priority=1000,
	},
	{
		'windwp/nvim-autopairs',
		event = 'VeryLazy',
		config = function() require("nvim-autopairs").setup {} end
	},
	{	
		'lukas-reineke/indent-blankline.nvim',	
		event = 'VeryLazy',
		main="ibl", 
		opts={}
	},
	{
		'akinsho/toggleterm.nvim', 
		event = 'InsertEnter',
		version = "*", 
		config = true,

	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = true, 
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		}
	},
	{
		'nvim-lualine/lualine.nvim',
		enabled = true, 
		lazy = false, 
		opts = {
			options = {
				icons_enabled = true,
				-- theme = 'tokyonight-night',
				theme = 'seoul256',
				component_separators = '/',
				section_separators = '',
			},
		},

	},
	{
		'lewis6991/gitsigns.nvim',
		event = 'VeryLazy',
		opts = {
			-- See `:help gitsigns.txt`
			signs = {
				add = { text = '+' },
				change = { text = '~' },
				delete = { text = '_' },
				topdelete = { text = '‾' },
				changedelete = { text = '~' },
			},
			on_attach = function(bufnr)
				vim.keymap.set('n', '<leader>hp', require('gitsigns').preview_hunk, { buffer = bufnr, desc = 'Preview git hunk' })

				-- don't override the built-in and fugitive keymaps
				local gs = package.loaded.gitsigns
				vim.keymap.set({'n', 'v'}, ']c', function()
					if vim.wo.diff then return ']c' end
					vim.schedule(function() gs.next_hunk() end)
					return '<Ignore>'
				end, {expr=true, buffer = bufnr, desc = "Jump to next hunk"})
				vim.keymap.set({'n', 'v'}, '[c', function()
					if vim.wo.diff then return '[c' end
					vim.schedule(function() gs.prev_hunk() end)
					return '<Ignore>'
				end, {expr=true, buffer = bufnr, desc = "Jump to previous hunk"})
			end,
		},
	},
	{
		"nvim-tree/nvim-web-devicons",
	},
	{
		'nvim-telescope/telescope.nvim',
		event = 'InsertEnter',
		branch = '0.1.x',
		dependencies = {
			'nvim-lua/plenary.nvim',
			-- Fuzzy Finder Algorithm which requires local dependencies to be built.
			-- Only load if `make` is available. Make sure you have the system
			-- requirements installed.
			{
				'nvim-telescope/telescope-fzf-native.nvim',
				-- NOTE: If you are having trouble with this installation,
				--       refer to the README for telescope-fzf-native for more instructions.
				build = 'make',
				cond = function()
					return vim.fn.executable 'make' == 1
				end,
			},
		},
	},
	{
		'nvim-treesitter/nvim-treesitter',
		event = "VeryLazy",
		dependencies = {
			'nvim-treesitter/nvim-treesitter-textobjects',
		},
		build = ':TSUpdate',
	},
	{
		"folke/noice.nvim",
		event = "InsertEnter",
		opts = {
			-- add any options here
		},
		dependencies = {
			"MunifTanjim/nui.nvim",
		}
	},
	{
		'saghen/blink.cmp',
		event = "InsertEnter",
		-- optional: provides snippets for the snippet source
		dependencies = { 'rafamadriz/friendly-snippets', "L3MON4D3/LuaSnip" },
		version = '1.*',
		---@module 'blink.cmp'
		---@type blink.cmp.Config
		opts = {
			keymap = { preset = 'enter' },

			appearance = {
				nerd_font_variant = 'mono'
			},
			completion = {
				documentation = { 
					auto_show = false,
					-- border = "rounded",
					-- winhighlight = "Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,CursorLine:BlinkCmpDocCursorLine,Search:None",
				},
				menu = {
					border = "rounded",
					winhighlight = "Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,CursorLine:BlinkCmpDocCursorLine,Search:None",
				},
			},
			sources = {
				default = { 'lsp', 'path', 'snippets', 'buffer' },
			},
			fuzzy = { implementation = "prefer_rust_with_warning" }
		},
		opts_extend = { "sources.default" }
	},
	{
		'Bekaboo/dropbar.nvim',
		-- optional, but required for fuzzy finder support
		dependencies = {
			'nvim-telescope/telescope-fzf-native.nvim',
			build = 'make'
		},
		config = function()
			local dropbar_api = require('dropbar.api')
			vim.keymap.set('n', '<Leader>;', dropbar_api.pick, { desc = 'Pick symbols in winbar' })
			vim.keymap.set('n', '[;', dropbar_api.goto_context_start, { desc = 'Go to start of current context' })
			vim.keymap.set('n', '];', dropbar_api.select_next_context, { desc = 'Select next context' })
		end,
		cmdline = {enabled  = false},
		signature = {enabled = true},
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({global = false})
				end, 
				desc = "Buffer Local Keymaps (which-key)",
			},
		}
	},
	{
		'goolord/alpha-nvim',
		dependencies = {
			'nvim-mini/mini.icons',
			'nvim-lua/plenary.nvim'
		},
		config = function ()
			require'alpha'.setup(require'alpha.themes.theta'.config)
		end
	},


	{
		"hat0uma/csvview.nvim",
		---@module "csvview"
		---@type CsvView.Options
		opts = {
		parser = { comments = { "#", "//" } },
		keymaps = {
		  -- Text objects for selecting fields
		  textobject_field_inner = { "if", mode = { "o", "x" } },
		  textobject_field_outer = { "af", mode = { "o", "x" } },
		  -- Excel-like navigation:
		  -- Use <Tab> and <S-Tab> to move horizontally between fields.
		  -- Use <Enter> and <S-Enter> to move vertically between rows and place the cursor at the end of the field.
		  -- Note: In terminals, you may need to enable CSI-u mode to use <S-Tab> and <S-Enter>.
		  jump_next_field_end = { "<Tab>", mode = { "n", "v" } },
		  jump_prev_field_end = { "<S-Tab>", mode = { "n", "v" } },
		  jump_next_row = { "<Enter>", mode = { "n", "v" } },
		  jump_prev_row = { "<S-Enter>", mode = { "n", "v" } },
		},
		},
		cmd = { "CsvViewEnable", "CsvViewDisable", "CsvViewToggle" },
		},

	{
		"folke/snacks.nvim", 
		---@type snacks.Config
		opts = {
			notifier = {
				timeout = 1500,
				width = {min = 40, max = 0.4},
				height= {min = 1, max = 0.6},
				margin = {top = 0, right = 1, bottom = 0},
				gap = 0, 
				soft = {"level", "added"},
				border = true, 
				ft = "markdown", 
			},
		},
	},

}
