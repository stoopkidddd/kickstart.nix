return {
  "snacks.nvim",
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    quickfile = { enabled = true },
    dashboard = {
      enabled = true,
      sections = {
        { section = "header" },
        { section = "keys", gap = 1 },
        { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = { 2, 2 } },
        { section = "startup" },
      },
    },
    lazygit = {
      enabled = true,
      configure = true,
    },
    picker = {
      sources = {
        explorer = {
          layout = { layout = { width = 0.3 } },
        },
        lsp_references = {
          formatters = {
            filename_first = true,
          },
        },
      },
    },
    explorer = {
      replace_netrw = true,
    },
    terminal = {
      enabled = true,
    },
    image = { enabled = true },
  },
  -- stylua: ignore
  keys = {
    { "<leader><space>", function() Snacks.picker.smart({
      formatters = {
        file = {
          filename_first = true,
        },
      }
    }) end, desc = "Smart Find Files" },
    { "<leader>,", function() Snacks.picker.buffers() end, desc = "Buffers" },
    { "<leader>/", function() Snacks.picker.grep({
      formatters = {
        file = {
          filename_only = true,
        }
      }
    }) end, desc = "Grep" },
    { "<leader>:", function() Snacks.picker.command_history() end, desc = "Command History" },
    { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
    { "<leader>.",  function() Snacks.scratch() end, desc = "Toggle Scratch Buffer" },
    { "<leader>sc", function() Snacks.picker.colorschemes() end, desc = "Colorschemes" },
    { "<leader>sk", function() Snacks.picker.keymaps() end, desc = "Keymaps" },
    { "<leader>sn", function() Snacks.picker.notifications() end, desc = "Notification History" },
    { "<leader>su", function() Snacks.picker.undo() end, desc = "Undo History" },
    { "<leader>sp", function() Snacks.picker.projects() end, desc = "Projects" },
    { "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition" },
    { "gD", function() Snacks.picker.lsp_declarations({
      formatters = {
        file = {
          filename_only = true,
        }
      }
    }) end, desc = "Goto Declaration" },
    { "gr", function() Snacks.picker.lsp_references({
      formatters = {
        file = {
          filename_only = true,
        }
      }
    }) end, nowait = true, desc = "References" },
    { "gI", function() Snacks.picker.lsp_implementations() end, desc = "Goto Implementation" },
    { "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },
    { "<leader>ss", function() Snacks.picker.lsp_symbols() end, desc = "LSP Symbols" },
    { "<leader>sS", function() Snacks.picker.lsp_workspace_symbols() end, desc = "LSP Workspace Symbols" },
  },
}
