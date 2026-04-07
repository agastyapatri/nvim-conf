-- Default options:
require('kanso').setup({
    compile = false,             -- enable compiling the colorscheme
    undercurl = true,            -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true},
    statementStyle = {},
    typeStyle = {},
    disableItalics = false,
    transparent = false,         -- do not set background color
    dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
    terminalColors = true,       -- define vim.g.terminal_color_{0,17}
    colors = {                   -- add/modify theme and palette colors
        palette = {},
        theme = { zen = {}, pearl = {}, ink = {}, all = {} },
    },
    overrides = function(colors) -- add/modify highlights
        return {}
    end,
    theme = "zen",              -- Load "zen" theme
    background = {               -- map the value of 'background' option to a theme
        dark = "zen",           -- try "ink" !
        light = "pearl"
    },
})


-- setup must be called before loading
vim.cmd("colorscheme kanso")
vim.api.nvim_set_hl(0, "Cursor", {bg = '#00D203'})
vim.opt.guicursor = {"i:block-Cursor"}

-- -- COLORS FOR KANSO ZEN
local kanso_zen_red = "#c4746e"
local kanso_zen_black = "#0d060c"
vim.api.nvim_set_hl(0, "TelescopeBorder", {
	bg = kanso_zen_black,
	fg = kanso_zen_red,
})
vim.api.nvim_set_hl(0, "TelescopePreviewTitle", {
	bg = kanso_zen_black,
	fg = kanso_zen_red,
})
vim.api.nvim_set_hl(0, "TelescopePromptTitle", {
	bg = kanso_zen_black,
	fg = kanso_zen_red,
})
vim.api.nvim_set_hl(0, "TelescopeResultsTitle", {
	bg = kanso_zen_black,
	fg = kanso_zen_red,
})

local kanso_zen_red = "#c4746e"
local kanso_zen_black = "#0d060c"
vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", {
	bg = kanso_zen_black,
	fg = kanso_zen_red,
})


local kanso_zen_red = "#c4746e"
local kanso_zen_black = "#0d060c"
vim.api.nvim_set_hl(0, "TelescopeBorder", {
	bg = kanso_zen_black,
	fg = kanso_zen_red,
})
vim.api.nvim_set_hl(0, "TelescopePreviewTitle", {
	bg = kanso_zen_black,
	fg = kanso_zen_red,
})
vim.api.nvim_set_hl(0, "TelescopePromptTitle", {
	bg = kanso_zen_black,
	fg = kanso_zen_red,
})
vim.api.nvim_set_hl(0, "TelescopeResultsTitle", {
	bg = kanso_zen_black,
	fg = kanso_zen_red,
})

