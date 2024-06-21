return {
  "LintaoAmons/cd-project.nvim",
  opts = {
    auto_register_project = true,
    hooks = {
      {
        callback = function(_)
          vim.cmd("Telescope smart_open")
        end,
      },
    },
  },
  keys = {
    {
      "<leader>cp",
      function()
        vim.cmd("CdProject")
      end,
      desc = "Change Project",
    },
  },
}
