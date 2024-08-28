return {
  "bloznelis/before.nvim",
  keys = {
    {
      "<C-h>",
      function()
        require("before").jump_to_last_edit()
      end,
      desc = "Just to previous edit location",
    },
    {
      "<C-l>",
      function()
        require("before").jump_to_next_edit()
      end,
      desc = "Just to next edit location",
    },
    {
      "<leader>oq",
      function()
        require("before").show_edits_in_quickfix()
      end,
      desc = "Show edits in quickfix list",
    },
    {
      "<leader>oe",
      function()
        require("before").show_edits_in_telescope()
      end,
      desc = "Show edits in telescope",
    },
  },

  config = function()
    local before = require("before")
    before.setup()

    -- Jump to previous entry in the edit history
    -- vim.keymap.set("n", "<C-h>", before.jump_to_last_edit, {})
    --
    -- -- Jump to next entry in the edit history
    -- vim.keymap.set("n", "<C-l>", before.jump_to_next_edit, {})
    --
    -- -- Look for previous edits in quickfix list
    -- vim.keymap.set("n", "<leader>oq", before.show_edits_in_quickfix, {})
    --
    -- -- Look for previous edits in telescope (needs telescope, obviously)
    -- vim.keymap.set("n", "<leader>oe", before.show_edits_in_telescope, {})
  end,
}
