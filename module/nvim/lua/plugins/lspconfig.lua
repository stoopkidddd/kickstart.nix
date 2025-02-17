return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- disable a keymap
    keys[#keys + 1] = { "gr", false }
    keys[#keys + 1] = { "gd", false }

    opts.inlay_hints.enabled = false

    return opts
  end,
}
