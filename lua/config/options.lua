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

-- Neovide settings
if vim.g.neovide then
  vim.g.neovide_scale_factor = 0.8 -- Smaller UI (default is 1.0)

  -- Cursor animation speed (default is 0.13, lower = faster)
  vim.g.neovide_cursor_animation_length = 0.06

  -- Cursor trail length (default is 0.8, lower = shorter trail)
  vim.g.neovide_cursor_trail_size = 0.4
end

vim.g.root_spec = { "cwd" }
