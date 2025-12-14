-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Neovide keymaps
if vim.g.neovide then
  vim.keymap.set("n", "<D-w>", "<leader>bd", { remap = true, desc = "Close buffer" })

  -- Clipboard keymaps for macOS
  vim.keymap.set("v", "<D-c>", '"+y', { desc = "Copy to clipboard" }) -- Cmd+C to copy
  vim.keymap.set("n", "<D-v>", '"+P', { desc = "Paste from clipboard" }) -- Cmd+V to paste (normal mode)
  vim.keymap.set("v", "<D-v>", '"+P', { desc = "Paste from clipboard" }) -- Cmd+V to paste (visual mode)
  vim.keymap.set("c", "<D-v>", "<C-R>+", { desc = "Paste from clipboard" }) -- Cmd+V to paste (command mode)
  vim.keymap.set("i", "<D-v>", "<C-R>+", { desc = "Paste from clipboard" }) -- Cmd+V to paste (insert mode)
  vim.keymap.set("n", "<D-a>", "ggVG", { desc = "Select all" }) -- Cmd+A to select all
end

-- Exit insert mode with jj
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode" })
