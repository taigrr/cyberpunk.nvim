--- Cyberpunk colorscheme for Neovim.
---
--- Usage with lazy.nvim:
---   { "taigrr/cyberpunk.nvim", opts = {} }
---
--- Or with custom options:
---   {
---     "taigrr/cyberpunk.nvim",
---     opts = {
---       transparent = true,
---       italic_comments = true,
---       italic_keywords = false,
---       bold_functions = true,
---       bold_keywords = true,
---       overrides = {
---         Normal = { bg = "#0a0a0a" },
---       },
---     },
---   }
local M = {}

---@class CyberpunkOpts
M.defaults = {
  transparent = false,
  italic_comments = false,
  italic_keywords = false,
  bold_functions = false,
  bold_keywords = true,
  overrides = {},
}

M.options = vim.deepcopy(M.defaults)

--- Load the cyberpunk colorscheme with the current options.
function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.g.colors_name = "cyberpunk"

  local palette = require("cyberpunk.palette")
  local highlights = require("cyberpunk.highlights")
  highlights.apply(palette, M.options)

  -- Terminal colors
  vim.g.terminal_color_0 = palette.black
  vim.g.terminal_color_1 = palette.red
  vim.g.terminal_color_2 = palette.green
  vim.g.terminal_color_3 = palette.yellow
  vim.g.terminal_color_4 = palette.blue
  vim.g.terminal_color_5 = palette.dark_purple
  vim.g.terminal_color_6 = palette.cyan
  vim.g.terminal_color_7 = palette.special
  vim.g.terminal_color_8 = palette.dark_fg
  vim.g.terminal_color_9 = palette.red
  vim.g.terminal_color_10 = palette.green
  vim.g.terminal_color_11 = palette.yellow
  vim.g.terminal_color_12 = palette.blue
  vim.g.terminal_color_13 = palette.dark_purple
  vim.g.terminal_color_14 = palette.cyan
  vim.g.terminal_color_15 = palette.special
end

--- Configure and load the cyberpunk colorscheme.
---@param opts? CyberpunkOpts
function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", M.defaults, opts or {})
  M.load()
end

return M
