--- Lualine theme for cyberpunk.nvim.
local palette = require("cyberpunk.palette")

return {
  normal = {
    a = { fg = palette.black, bg = palette.green, gui = "bold" },
    b = { fg = palette.green, bg = palette.dark_bg },
    c = { fg = palette.dark_fg, bg = palette.black },
  },
  insert = {
    a = { fg = palette.black, bg = palette.cyan, gui = "bold" },
    b = { fg = palette.cyan, bg = palette.dark_bg },
  },
  visual = {
    a = { fg = palette.black, bg = palette.yellow, gui = "bold" },
    b = { fg = palette.yellow, bg = palette.dark_bg },
  },
  replace = {
    a = { fg = palette.black, bg = palette.red, gui = "bold" },
    b = { fg = palette.red, bg = palette.dark_bg },
  },
  command = {
    a = { fg = palette.black, bg = palette.blue, gui = "bold" },
    b = { fg = palette.blue, bg = palette.dark_bg },
  },
  inactive = {
    a = { fg = palette.dark_fg, bg = palette.dark_bg },
    b = { fg = palette.dark_fg, bg = palette.dark_bg },
    c = { fg = palette.dark_fg, bg = palette.black },
  },
}
