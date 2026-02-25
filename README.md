# cyberpunk.nvim

A dark Neovim colorscheme with neon green, cyan, yellow, and red highlights on a black background.

![Neovim](https://img.shields.io/badge/Neovim-0.8%2B-green?logo=neovim)

## Palette

| Role       | Color   | Hex       |
|------------|---------|-----------|
| Normal     | Green   | `#408000` |
| Comment    | Cyan    | `#0eeafa` |
| Constant   | Blue    | `#0197dd` |
| Statement  | Yellow  | `#ffd302` |
| Operator   | Red     | `#FF0000` |
| Special    | Beige   | `#cdb1ad` |
| Background | Black   | `#000000` |

## Installation

### lazy.nvim

```lua
-- Minimal:
{ "taigrr/cyberpunk.nvim", opts = {} }

-- With options:
{
  "taigrr/cyberpunk.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    transparent = false,     -- set true for transparent background
    italic_comments = false, -- italicize comments
    italic_keywords = false, -- italicize keywords
    bold_functions = false,  -- bold function names
    bold_keywords = true,    -- bold keywords (default)
    overrides = {},          -- override specific highlight groups
  },
}
```

### Packer

```lua
use {
  "taigrr/cyberpunk.nvim",
  config = function()
    require("cyberpunk").setup()
  end,
}
```

### Manual

Clone to your Neovim packages directory:

```bash
git clone https://github.com/taigrr/cyberpunk.nvim \
  ~/.local/share/nvim/site/pack/plugins/start/cyberpunk.nvim
```

## Usage

```lua
require("cyberpunk").setup({
  transparent = false,
  italic_comments = true,
  bold_functions = true,
  overrides = {
    -- Override any highlight group:
    -- Normal = { bg = "#0a0a0a" },
  },
})
```

Or just `:colorscheme cyberpunk`.

## Features

- 140+ highlight groups
- Full Treesitter support (`@keyword`, `@function`, `@string`, `@variable`, etc.)
- LSP semantic token highlights
- LSP diagnostics with undercurl
- gitsigns.nvim integration
- Configurable via `setup()`: transparency, italics, bold, per-group overrides

## License

MIT
