-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>T", function()
  require("toggleterm").toggle()
end)

vim.keymap.set("n", "<leader>yga", function()
  require("toggleterm").exec("yarn graphql:all", 1, 0.3, vim.fn.getcwd())
end, {})

vim.api.nvim_set_keymap("n", "<leader><space>", "<cmd>Telescope smart_open<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>sf", "<cmd>Telescope smart_open<CR>", {})
