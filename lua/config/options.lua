-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable inlay hints by default
vim.g.lazyvim_typescript_inlay_hints = false

-- Disable semantic tokens (those box highlights around variables)
vim.g.lazyvim_semantic_tokens = false

-- Disable auto-formatting on save for Python files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.b.autoformat = false
  end,
})
