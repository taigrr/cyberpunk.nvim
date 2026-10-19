vim.opt.runtimepath:append(vim.fn.getcwd())

vim.cmd.colorscheme("cyberpunk")

assert(vim.g.colors_name == "cyberpunk", "expected colorscheme to be active")
assert(vim.g.terminal_color_2 == "#408000", "expected terminal colors to be set")

local default_normal = vim.api.nvim_get_hl_by_name("Normal", true)
assert(default_normal.foreground == 0x408000, "expected default Normal foreground")
assert(default_normal.background == 0x000000, "expected default Normal background")

local cyberpunk = require("cyberpunk")
cyberpunk.setup({
  transparent = true,
})

vim.cmd.colorscheme("cyberpunk")

local transparent_normal = vim.api.nvim_get_hl_by_name("Normal", true)
assert(transparent_normal.foreground == 0x408000, "expected transparent Normal foreground")
assert(transparent_normal.background == nil, "expected transparent Normal background")
