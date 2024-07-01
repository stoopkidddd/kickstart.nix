return {
  "rgroli/other.nvim",
  config = function()
    require("other-nvim").setup({
      showMissingFiles = false,
      rememberBuffers = false,
      mappings = {
        "golang",
        {
          pattern = "/(.*)/(.*)/.*.tsx",
          target = {
            {
              target = "/%1/%2/%2.stories.tsx",
              context = "stories",
            },
            {
              target = "/%1/%2/%2.test.tsx",
              context = "test",
            },
            {
              target = "/%1/%2/%2.tsx",
              context = "component",
            },
          },
        },
        {
          pattern = "/(.*)/(.*)/.*.ts",
          target = {
            {
              target = "/%1/%2/%2.test.ts",
              context = "test",
            },
            {
              target = "/%1/%2/%2.ts",
              context = "file",
            },
          },
        },
      },
    })
  end,
  keys = {
    {
      "<leader>o",
      function()
        vim.cmd("Other")
      end,
      desc = "Open Other Files",
    },
  },
}
