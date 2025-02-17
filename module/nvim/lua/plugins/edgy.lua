local width = {
  left = 0.25,
}

return {
  "folke/edgy.nvim",
  event = "VeryLazy",
  init = function()
    vim.opt.laststatus = 3
    vim.opt.splitkeep = "screen"
  end,
  opts = {
    animate = {
      enabled = false,
    },
    bottom = {
      {
        ft = "snacks_terminal",
        size = { height = 0.4 },
        title = "%{b:snacks_terminal.id}: %{b:term_title}",
      },
      {
        ft = "lazyterm",
        title = "LazyTerm",
        size = { height = 0.3 },
        filter = function(buf)
          return not vim.b[buf].lazyterm_cmd
        end,
      },
      "Trouble",
      { ft = "qf", title = "QuickFix" },
      {
        ft = "help",
        size = { height = 0.4 },
        -- only show help buffers
        filter = function(buf)
          return vim.bo[buf].buftype == "help"
        end,
      },
      { ft = "spectre_panel", size = { height = 0.4 } },
    },
    left = {
      -- Neo-tree filesystem always takes half the screen height
      -- {
      --   ft = "snacks_picker_list",
      --   size = { width = width.left },
      -- },
      -- {
      --   title = "Neo-Tree",
      --   ft = "neo-tree",
      --   filter = function(buf)
      --     return vim.b[buf].neo_tree_source == "filesystem"
      --   end,
      --   size = { width = width.left },
      -- },
      -- {
      --   title = "Neo-Tree Git",
      --   ft = "neo-tree",
      --   filter = function(buf)
      --     return vim.b[buf].neo_tree_source == "git_status"
      --   end,
      --   size = { width = width.left },
      --   open = "Neotree position=right git_status",
      -- },
      {
        title = "Outline",
        ft = "Outline",
        size = { width = width.left },
      },
      -- {
      --   title = "Neo-Tree Buffers",
      --   ft = "neo-tree",
      --   filter = function(buf)
      --     return vim.b[buf].neo_tree_source == "buffers"
      --   end,
      --   pinned = true,
      --   open = "Neotree position=top buffers",
      -- },
      -- {
      --   ft = "Outline",
      --   pinned = true,
      --   open = "SymbolsOutlineOpen",
      -- },
      -- any other neo-tree windows
      "neo-tree",
    },
  },
}
