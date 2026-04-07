vim.cmd("colorscheme retrobox")
vim.api.nvim_set_hl(0, "Cursor", {bg = '#00D203'})
vim.opt.guicursor = {"i:block-Cursor"}
-- Change the background color of the completion menu
vim.cmd('highlight Pmenu guibg=#1c1c1c')
-- Change the background color of the selected item
vim.cmd('highlight PmenuSel guibg=#1c1c1c')
-- Customize floating window background (if used by your completion plugin)
vim.cmd('highlight NormalFloat guibg=#1c1c1c')

vim.g.terminal_color_0  = "#1d2021"  -- black
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
