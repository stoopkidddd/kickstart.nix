return {
  enabled = false,
  "ibhagwan/fzf-lua",
  -- optional for icon support
  -- dependencies = { "nvim-tree/nvim-web-devicons" },
  -- opts = {
  --   defaults = { formatter = "path.filename_first" },
  -- },
  keys = function()
    return {}
  end,
  lazy = false,
  -- keys = {
  --     -- add a keymap to browse plugin files
  --     -- stylua: ignore
  --     {
  --       "<leader>G",
  --       function() vim.cmd("FzfLua git_status") end,
  --       desc = "Search Git Pending Changes",
  --     },
  -- },
}
