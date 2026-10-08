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

local retrobox_red = "#cc241d"
local retrobox_red2 = "#ff5c57"
local retrobox_black = "#1d2021"

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
  fg = retrobox_red2
})

-- fzf-lua
vim.api.nvim_set_hl(0, "FzfCustomStyle", {
  bg = retrobox_black,
  fg = retrobox_red2
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
    })

    vim.api.nvim_set_hl(0, "BlinkCmpScrollBarGutter", {
      bg = retrobox_black,
    })

    vim.api.nvim_set_hl(0, "BlinkCmpScrollBarThumb", {
      bg = "#504945",
    })
  end,
})


