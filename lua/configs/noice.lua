require("noice").setup({
	lsp = {
		-- override markdown rendering so that **cmp** and other plugins use **Treesitter**
		override = {
			["vim.lsp.util.convert_input_to_markdown_lines"] = true,
			["vim.lsp.util.stylize_markdown"] = true,
			["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
		},
	},
	hover = {enabled = true},
	message = {
		enabled = true, 
		view = "notify",
		opts = {},
	},
	-- you can enable a preset for easier configuration
	presets = {
		bottom_search = false, -- use a classic bottom cmdline for search
		command_palette = false, -- position the cmdline and popupmenu together
		long_message_to_split = true, -- long messages will be sent to a split
		inc_rename = false, -- enables an input dialog for inc-rename.nvim
		lsp_doc_border = true, -- add a border to hover docs and signature help
	},
	})

vim.api.nvim_create_autocmd({ 'RecordingEnter', 'RecordingLeave' }, {
	group = vim.api.nvim_create_augroup('macro-notify', { clear = true }),
	callback = function(ev)
		local msg
		if ev.event == 'RecordingEnter' then
			msg = 'Recording to register @'
		else
			msg = 'Recorded to register @'
		end
		vim.notify(msg .. vim.fn.reg_recording(), vim.log.levels.INFO, {
			title = 'Macro',
			timeout = 5000,
			hide_from_history = false,
		})
	end,
})
