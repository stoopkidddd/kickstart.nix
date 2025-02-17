-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>T", function()
  Snacks.terminal.toggle(nil, { auto_close = true })
end, { desc = "Toggle Term" })

vim.keymap.set("n", "<leader>yga", function()
  Snacks.terminal.open("yarn graphql:all", { cwd = vim.fn.getcwd(), auto_close = true })
end, { desc = "Generate GraphQL" })

vim.keymap.set("n", "<leader>gg", function()
  Snacks.lazygit.open()
end)

-- local Terminal = require("toggleterm.terminal").Terminal
--
-- local omm = Terminal:new({
--   cmd = "omm",
--   direction = "float",
--   float_opts = {
--     border = "double",
--   },
-- })
--
-- function _omm_toggle()
--   omm:toggle()
-- end
--
-- vim.keymap.set("n", "<leader>N", "<cmd>lua _omm_toggle()<CR>", { noremap = true, silent = true, desc = "Task List" })

-- vim.keymap.set("n", "<leader><space>", function()
--   require("telescope").extensions.smart_open.smart_open({
--     cwd_only = true,
--   })
-- end, { desc = "Find Files", noremap = true, silent = true })

-- vim.keymap.set("n", "<leader>sf", "<cmd>Telescope smart_open<CR>", { desc = "Find Files" })

-- vim.keymap.set("n", "<leader>CC", "<cmd>ChatGPT<CR>", { desc = "ChatGPT" })

vim.keymap.set("n", "<leader>bp", "<cmd>bp<CR>", { desc = "Previous Buffer" })
vim.keymap.set("n", "<leader>bn", "<cmd>bn<CR>", { desc = "Next Buffer" })

vim.keymap.set("n", "<leader>z", "<cmd>ZenMode<CR>", { desc = "Zen Mode" })

-- vim.keymap.set(
--   "n",
--   "<leader>/",
--   '<cmd>lua require("fzf-lua").live_grep_glob({fzf_layout = "reverse-list"})<cr>',
--   { desc = "Live Grep Glob" }
-- )

-- vim.keymap.set("n", "<leader>fz", "<cmd>FzfLua<CR>", { desc = "Fzf Lua" })

-- vim.keymap.set("n", "<leader>ac", "<cmd>CopilotChat<CR>", { desc = "Copilot Chat" })
-- vim.keymap.set("v", "<leader>ae", "<cmd>CopilotChatExplain<CR>", { desc = "Copilot Explain" })
-- vim.keymap.set("v", "<leader>ar", "<cmd>CopilotChatReview<CR>", { desc = "Copilot Review" })

vim.keymap.set("n", "<leader>gd", "<cmd>DiffviewOpen<CR>", { desc = "Diffview Open" })

vim.keymap.set("n", "<C-W>m", "<Cmd>WinShift<CR>", { desc = "WinShift" })
vim.keymap.set("n", "<C-W>s", "<Cmd>WinShift swap<CR>", { desc = "WinShift" })

local function run_jest()
  local current_file = vim.fn.expand("%:p")
  local command = string.format(
    "COVERAGE=true NODE_ENV=test npx jest -c=jest.config.ts --coverage --coverageDirectory=coverage/jest %s",
    current_file
  )

  Snacks.terminal.open(command, { cwd = vim.fn.getcwd() })
end

vim.keymap.set("n", "<leader>tt", function()
  run_jest()
end, { desc = "Jest Test" })

-- { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition" },
-- { "gD", function() Snacks.picker.lsp_declarations() end, desc = "Goto Declaration" },
vim.keymap.set("n", "gr", function()
  Snacks.picker.lsp_references()
end, { nowait = true, desc = "References" })
-- { "gI", function() Snacks.picker.lsp_implementations() end, desc = "Goto Implementation" },
-- { "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },
