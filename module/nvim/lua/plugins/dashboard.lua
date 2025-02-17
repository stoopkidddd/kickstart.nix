return {
  "nvimdev/dashboard-nvim",
  lazy = false,
  event = "VimEnter",
  config = function()
    require("dashboard").setup({
      -- config
    })
  end,
  dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
