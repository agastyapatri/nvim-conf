require("neo-tree").setup({
  close_if_last_window = true, -- Close Neo-tree if it's the last window left open
  popup_border_style = "rounded",
  enable_git_status = true,
  enable_diagnostics = true,
  
  -- Default configurations for the sidebar window
  window = {
	position = "left",
	width = 30,
	mapping_options = {
	  noremap = true,
	  nowait = true,
	},
	mappings = {
	  ["<space>"] = "none", -- Disable space so it doesn't conflict with your leader
	  ["<2-LeftMouse>"] = "open",
	  ["<cr>"] = "open",
	  ["<esc>"] = "cancel", -- close preview or floating window
	  ["P"] = { "toggle_preview", config = { use_float = true, use_image_nvim = true } },
	  ["S"] = "open_split",
	  ["s"] = "open_vsplit",
	  ["t"] = "open_tabnew",
	  ["w"] = "open_with_window_picker",
	  ["C"] = "close_node",
	  ["z"] = "close_all_nodes",
	  ["a"] = { "add", config = { show_path = "none" } }, -- "none", "relative", "absolute"
	  ["d"] = "delete",
	  ["r"] = "rename",
	  ["y"] = "copy_to_clipboard",
	  ["x"] = "cut_to_clipboard",
	  ["p"] = "paste_from_clipboard",
	  ["c"] = "copy", -- takes text input for destination, also accepts movement
	  ["m"] = "move", -- takes text input for destination, also accepts movement
	  ["q"] = "close_window",
	  ["R"] = "refresh",
	  ["?"] = "show_help",
	}
  },
  filesystem = {
	filtered_items = {
	  visible = false, -- when true, filtered items will be hidden entirely
	  hide_dotfiles = false,
	  hide_gitignored = false,
	  hide_hidden = false, -- only works on Windows for hidden files/folders
	},
	follow_current_file = {
	  enabled = true, -- This replaces nvim-tree's update_focused_file
	},
	use_libuv_file_watcher = true, -- Automatically refreshes when files change outside NVIM
  },
  git_status = {
	window = {
	  position = "float",
	  mappings = {
		["A"]  = "git_add_all",
		["gu"] = "git_unstage_file",
		["ga"] = "git_add_file",
		["gr"] = "git_revert_file",
		["gc"] = "git_commit",
		["gp"] = "git_push",
		["gg"] = "git_commit_and_push",
	  }
	}
  }
})

-- --- Keymaps ---
local map = vim.keymap.set

-- Standard toggle (matches the common nvim-tree shortcut)
map("n", "<A-1>", "<cmd>Neotree toggle<cr>", { desc = "Toggle Neo-tree" })

-- Focus the tree without toggling it
map("n", "<leader>fe", "<cmd>Neotree focus<cr>", { desc = "Focus Neo-tree" })

-- Open Neo-tree explicitly to show Git Status or Buffers
map("n", "<leader>ng", "<cmd>Neotree float git_status<cr>", { desc = "Neo-tree Git Status (Float)" })
map("n", "<leader>nb", "<cmd>Neotree toggle buffers<cr>", { desc = "Neo-tree Buffers Sidepanel" })






