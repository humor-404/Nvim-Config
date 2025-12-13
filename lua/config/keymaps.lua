-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Make sure we remove any old conflicting mappings first
pcall(vim.keymap.del, "n", "<leader>e")
pcall(vim.keymap.del, "n", "<leader>E")

-- Toggle Neo-tree sidebar (cwd)
vim.keymap.set("n", "<leader>e", function()
  -- toggle filesystem tree and focus current working directory
  vim.cmd("Neotree toggle filesystem")
end, { desc = "Explorer (toggle filesystem)" })

-- Reveal current file in the tree (open and focus file in tree)
vim.keymap.set("n", "<leader>E", function()
  vim.cmd("Neotree reveal")
end, { desc = "Explorer (reveal file)" })

