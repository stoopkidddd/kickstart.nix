return {
  "GeorgesAlkhouri/nvim-aider",
  cmd = {
    "AiderTerminalToggle",
    "AiderHealth",
  },
  keys = {
    { "<leader>A/", "<cmd>AiderTerminalToggle<cr>", desc = "Open Aider" },
    { "<leader>As", "<cmd>AiderTerminalSend<cr>", desc = "Send to Aider", mode = { "n", "v" } },
    { "<leader>Ac", "<cmd>AiderQuickSendCommand<cr>", desc = "Send Command To Aider" },
    { "<leader>Ab", "<cmd>AiderQuickSendBuffer<cr>", desc = "Send Buffer To Aider" },
    { "<leader>A+", "<cmd>AiderQuickAddFile<cr>", desc = "Add File to Aider" },
    { "<leader>A-", "<cmd>AiderQuickDropFile<cr>", desc = "Drop File from Aider" },
    { "<leader>Ar", "<cmd>AiderQuickReadOnlyFile<cr>", desc = "Add File as Read-Only" },
  },
  dependencies = {
    "folke/snacks.nvim",
    --- The below dependencies are optional
    "catppuccin/nvim",
  },
  config = true,
}
