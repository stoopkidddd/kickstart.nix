-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>T", function()
  require("toggleterm").toggle()
end, { desc = "Toggle Term" })

vim.keymap.set("n", "<leader>yga", function()
  require("toggleterm").exec("yarn graphql:all", 1, 0.3, vim.fn.getcwd())
end, { desc = "Generate GraphQL" })

vim.keymap.set("n", "<leader><space>", "<cmd>Telescope smart_open<CR>", {})
vim.keymap.set("n", "<leader>sf", "<cmd>Telescope smart_open<CR>", { desc = "Find Files" })

-- vim.keymap.set("n", "<leader>CC", "<cmd>ChatGPT<CR>", { desc = "ChatGPT" })

vim.keymap.set("n", "<leader>bp", "<cmd>bp<CR>", { desc = "Previous Buffer" })
vim.keymap.set("n", "<leader>bn", "<cmd>bn<CR>", { desc = "Next Buffer" })

vim.keymap.set("n", "<leader>z", "<cmd>ZenMode<CR>", { desc = "Zen Mode" })

vim.keymap.set(
  "n",
  "<leader>/",
  '<cmd>lua require("fzf-lua").live_grep_glob({fzf_layout = "reverse-list"})<cr>',
  { desc = "Live Grep Glob" }
)

vim.keymap.set("n", "<leader>fz", "<cmd>FzfLua<CR>", { desc = "Fzf Lua" })

vim.keymap.set("n", "<leader>ac", "<cmd>CopilotChat<CR>", { desc = "Copilot Chat" })
vim.keymap.set("v", "<leader>ae", "<cmd>CopilotChatExplain<CR>", { desc = "Copilot Explain" })
vim.keymap.set("v", "<leader>ar", "<cmd>CopilotChatReview<CR>", { desc = "Copilot Review" })

vim.keymap.set("n", "<leader>gd", "<cmd>DiffviewOpen<CR>", { desc = "Diffview Open" })

vim.keymap.set("n", "<C-W>m", "<Cmd>WinShift<CR>", { desc = "WinShift" })
vim.keymap.set("n", "<C-W>s", "<Cmd>WinShift swap<CR>", { desc = "WinShift" })
