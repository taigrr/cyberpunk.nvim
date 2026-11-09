vim.opt.runtimepath:append(vim.fn.getcwd())

local cyberpunk = require("cyberpunk")
local defaults = vim.deepcopy(cyberpunk.defaults)

cyberpunk.setup()
cyberpunk.options.overrides.Normal = { fg = "#ffffff" }
assert(vim.deep_equal(cyberpunk.defaults, defaults), "runtime options must not mutate defaults")
cyberpunk.setup()
assert(next(cyberpunk.options.overrides) == nil, "setup must reset overrides to defaults")

local opts = { overrides = { Normal = { fg = "#123456" } } }
cyberpunk.setup(opts)
opts.overrides.Normal.fg = "#ffffff"
cyberpunk.load()
local normal = vim.api.nvim_get_hl_by_name("Normal", true)
assert(normal.foreground == 0x123456, "caller mutations must not change configured overrides")

cyberpunk.options.overrides.Normal.fg = "#abcdef"
assert(opts.overrides.Normal.fg == "#ffffff", "runtime mutations must not change caller options")
cyberpunk.setup()
normal = vim.api.nvim_get_hl_by_name("Normal", true)
assert(normal.foreground == 0x408000, "setup must restore the default foreground")
assert(vim.deep_equal(cyberpunk.defaults, defaults), "defaults must remain unchanged")
