local retrobox_red2 = "#ff5c57"
local retrobox_blue  = "#458588"  -- blue
local retrobox_black = "#1d2021"  -- black
local retrobox_red = "#cc241d"  -- red
local retrobox_green = "#98971a"  -- green
local retrobox_yellow = "#d79921"  -- yellow
local retrobox_blue = "#458588"  -- blue
local retrobox_magenta = "#b16286"  -- magenta
local retrobox_cyan = "#689d6a"  -- cyan
local retrobox_white = "#a89984"  -- white
local retrobox_bright_black = "#928374"  -- bright black
local retrobox_bright_red = "#fb4934"  -- bright red
local retrobox_bright_green = "#b8bb26"  -- bright green
local retrobox_bright_yellow = "#fabd2f"  -- bright yellow
local retrobox_bright_blue = "#83a598"  -- bright blue
local retrobox_bright_magenta = "#d3869b"  -- bright magenta
local retrobox_bright_cyan = "#8ec07c"  -- bright cyan
local retrobox_bright_white = "#ebdbb2"  -- bright white
local main_UI_accent = retrobox_bright_blue
vim.g.terminal_color_0  = retrobox_black
vim.g.terminal_color_1  = "#cc241d"  -- red
vim.g.terminal_color_2  = "#98971a"  -- green
vim.g.terminal_color_3  = "#d79921"  -- yellow
vim.g.terminal_color_4  = "#458588"  -- blue
vim.g.terminal_color_5  = "#b16286"  -- magenta
vim.g.terminal_color_6  = "#689d6a"  -- cyan
vim.g.terminal_color_7  = "#a89984"  -- white
vim.g.terminal_color_8  = "#928374"  -- bright black
vim.g.terminal_color_9  = "#fb4934"  -- bright red
vim.g.terminal_color_10 = "#b8bb26"  -- bright green
vim.g.terminal_color_11 = "#fabd2f"  -- bright yellow
vim.g.terminal_color_12 = "#83a598"  -- bright blue
vim.g.terminal_color_13 = "#d3869b"  -- bright magenta
vim.g.terminal_color_14 = "#8ec07c"  -- bright cyan
vim.g.terminal_color_15 = "#ebdbb2"  -- bright white


-- Load colorscheme first
vim.cmd("colorscheme retrobox")

-- Cursor
vim.api.nvim_set_hl(0, "Cursor", {
  bg = "#00D203",
})

vim.opt.guicursor = { "i:block-Cursor" }

-- Noice
vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", {
  bg = retrobox_black,
  fg = main_UI_accent
})

-- fzf-lua
vim.api.nvim_set_hl(0, "FzfCustomStyle", {
  bg = retrobox_black,
  fg = main_UI_accent
})

require("fzf-lua").setup({
  winopts = {
    border = "rounded",
  },
  hls = {
    border = "FzfCustomStyle",
    preview_border = "FzfCustomStyle",
    title = "FzfCustomStyle",
    preview_title = "FzfCustomStyle",
  },
})

-- blink.cmp
vim.api.nvim_create_autocmd("User", {
	pattern = "BlinkCmpMenuOpen",
	callback = function()
		vim.api.nvim_set_hl(0, "BlinkCmpMenu", {
			bg = retrobox_black,
		})

		vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", {
			bg = retrobox_black,
			fg = retrobox_white
		})

		vim.api.nvim_set_hl(0, "BlinkCmpScrollBarGutter", {
			bg = retrobox_black,
		})

		vim.api.nvim_set_hl(0, "BlinkCmpScrollBarThumb", {
			bg = "#504945",
			-- bg = main_UI_accent
		})
	end,
})

vim.api.nvim_set_hl(0, "LazyBorder", { fg = main_UI_accent})
vim.api.nvim_set_hl(0, "FloatBorder", { fg = main_UI_accent })
vim.api.nvim_set_hl(0, "LazyNormal", {bg=retrobox_black})
vim.api.nvim_set_hl(0, "Normal", {fg = retrobox_bright_white, bg = retrobox_black})
vim.api.nvim_set_hl(0, "TermBg", {bg = retrobox_black})
vim.api.nvim_set_hl(0, "WinSeparator", { fg = main_UI_accent, bg = main_UI_accent })





















