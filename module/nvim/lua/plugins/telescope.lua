return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      layout_strategy = "center",
      layout_config = {
        prompt_position = "top",
        width = 0.7,
        anchor = "N",
        horizontal = {
          mirror = false,
        },
        vertical = {
          mirror = false,
        },
      },

      path_display = { "smart" },
    },
    keys = {
      -- change a keymap
      {
        "<leader><space>",
        "<cmd>lua require('telescope').builtin.find_files({ cwd = vim.fn.getcwd() })",
        desc = "Find Files",
      },
      {
        "<leader>sf",
        "<cmd>lua require('telescope').builtin.find_files({ cwd = vim.fn.getcwd() })",
        desc = "Find Files",
      },
    },
  },
}
