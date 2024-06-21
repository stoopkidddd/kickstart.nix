return {
  "APZelos/blamer.nvim",
  keys = {
    {
      "<leader>gB",
      function()
        vim.cmd("BlamerToggle")
      end,
      desc = "Git Inline Blame",
    },
  },
}
