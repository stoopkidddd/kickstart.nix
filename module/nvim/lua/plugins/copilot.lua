return {
  "zbirenbaum/copilot.lua",
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
