return {
  "zbirenbaum/copilot.lua",
  enabled = false,
  event = "InsertEnter",
  opts = {
    suggestion = {
      auto_trigger = true,
      debounce = 200,
      keymap = {
        accept = "<M-p>",
      },
      auto_refresh = true,
    },
  },
}
