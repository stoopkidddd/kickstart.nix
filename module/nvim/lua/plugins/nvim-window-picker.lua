return {
  "s1n7ax/nvim-window-picker",
  name = "window-picker",
  event = "VeryLazy",
  version = "2.*",
  config = function()
    require("window-picker").setup({
      hint = "floating-big-letter",
      selection_chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
      show_prompt = false,
      filter_rules = {
        autoselect_one = true,
        include_current_win = false,
        bo = {
          filetype = { "NvimTree", "neo-tree", "notify", "neo-tree-popup", "noice" },
          buftype = { "terminal", "quickfix" },
        },
      },
    })
  end,
}
