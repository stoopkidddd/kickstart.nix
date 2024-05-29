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
        function()
          require("telescope").extensions.smart_open.smart_open()
        end,
        desc = "Find Files",
      },
      {
        "<leader>sf",
        function()
          require("telescope").extensions.smart_open.smart_open()
        end,
        desc = "Find Files",
      },
    },
  },
}
