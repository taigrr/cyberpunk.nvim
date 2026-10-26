vim.opt.runtimepath:append(vim.fn.getcwd())

local cyberpunk = require("cyberpunk")
local groups = { "Keyword", "@keyword", "@keyword.function", "@keyword.return" }

for _, enabled in ipairs({ false, true, false }) do
  cyberpunk.setup({ bold_keywords = enabled, italic_keywords = enabled })
  vim.cmd.colorscheme("cyberpunk")

  for _, group in ipairs(groups) do
    local highlight = vim.api.nvim_get_hl_by_name(group, true)
    assert((highlight.bold == true) == enabled, group .. " must honor bold_keywords")
    assert((highlight.italic == true) == enabled, group .. " must honor italic_keywords")
  end
end
