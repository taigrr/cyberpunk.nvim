# cyberpunk.nvim

A dark Neovim colorscheme with neon green, cyan, yellow, and red highlights on a black background.

![Neovim](https://img.shields.io/badge/Neovim-0.8%2B-green?logo=neovim)
[![CI](https://github.com/taigrr/cyberpunk.nvim/actions/workflows/ci.yml/badge.svg)](https://github.com/taigrr/cyberpunk.nvim/actions/workflows/ci.yml)

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

- 200+ highlight groups
- Full Treesitter support (legacy and Neovim 0.10+ capture names)
- LSP semantic token highlights
- LSP diagnostics with undercurl
- Terminal colors
- Configurable via `setup()`: transparency, italics, bold, per-group overrides

### Plugin Support

- **gitsigns.nvim** — git diff signs in the gutter
- **telescope.nvim** — fuzzy finder UI
- **nvim-cmp** — completion menu with kind highlighting
- **nvim-tree.lua** — file explorer
- **lualine.nvim** — statusline (use `theme = "cyberpunk"`)
- **lazy.nvim** — plugin manager UI
- **indent-blankline.nvim** — indent guides
- **which-key.nvim** — keybinding popup
- **nvim-notify** — notification popups
- **noice.nvim** — command line, messages, and popup UI

### Lualine

```lua
require("lualine").setup({
  options = { theme = "cyberpunk" },
})
```

## License

0BSD
