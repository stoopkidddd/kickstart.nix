-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>T", function()
  require("toggleterm").toggle()
end)

-- vim.api.nvim_set_keymap(
--   "n",
--   "<leader>tw",
--   "<cmd>lua require('neotest').run.run({ jestCommand = 'yarn jest:watch --coverage' })<cr>",
--   {}
-- )

vim.api.nvim_set_keymap(
  "n",
  "<leader>yga",
  "<cmd>lua require('overseer').run_template({name = \"yarn graphql:all\"})<cr>",
  {}
)

vim.api.nvim_set_keymap("n", "<leader><space>", "<cmd>Telescope smart_open<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>sf", "<cmd>Telescope smart_open<CR>", {})
