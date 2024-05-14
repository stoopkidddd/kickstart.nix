return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      path_display = { "smart" },
      -- layout_strategy = "flex",
      layout_config = {
        vertical = { width = 0.8 },

        prompt_position = "top",
      },
    },
    pickers = {
      find_files = {
        theme = "dropdown",
      },
      git_files = {
        theme = "dropdown",
      },
    },
  },
}
