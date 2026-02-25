--- Cyberpunk colorscheme for Neovim.
---
--- Usage with lazy.nvim:
---   { "taigrr/cyberpunk.vim", opts = {} }
---
--- Or with custom options:
---   {
---     "taigrr/cyberpunk.vim",
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

--- Configure and load the cyberpunk colorscheme.
---@param opts? CyberpunkOpts
function M.setup(opts)
  opts = vim.tbl_deep_extend("force", M.defaults, opts or {})

  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.g.colors_name = "cyberpunk"

  local palette = require("cyberpunk.palette")
  local highlights = require("cyberpunk.highlights")
  highlights.apply(palette, opts)
end

return M
