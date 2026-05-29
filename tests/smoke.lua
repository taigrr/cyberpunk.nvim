vim.opt.runtimepath:append(vim.fn.getcwd())

local cyberpunk = require("cyberpunk")
cyberpunk.setup({
  transparent = true,
  italic_comments = true,
  italic_keywords = true,
  bold_functions = true,
  overrides = {
    Normal = { bg = "#101010" },
  },
})

vim.cmd.colorscheme("cyberpunk")

assert(vim.g.colors_name == "cyberpunk", "expected colorscheme to be active")
assert(vim.g.terminal_color_1 == "#FF0000", "expected terminal colors to be set")
assert(vim.fn.hlexists("TelescopeNormal") == 1, "expected Telescope highlights")
assert(vim.fn.hlexists("NotifyINFOIcon") == 1, "expected notify highlights")
assert(vim.fn.hlexists("WinBar") == 1, "expected WinBar highlight")

local lualine_theme = require("lualine.themes.cyberpunk")
assert(type(lualine_theme) == "table", "expected lualine theme table")
assert(type(lualine_theme.normal) == "table", "expected normal mode lualine theme")
