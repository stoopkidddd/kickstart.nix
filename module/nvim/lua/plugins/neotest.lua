return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      "stoopkidddd/neotest-jest",
    },
    opts = function(_, opts)
      table.insert(
        opts.adapters,
        require("neotest-jest")({
          -- jestCommand = require("neotest-jest.jest-util").getJestCommand(vim.fn.expand("%:p:h")),
          -- jestCommand = "npx jest --coverage --detectOpenHandles --selectProjects client server -- ",
          jestCommand = "yarn jest:neotest -- --coverageDirectory=coverage/jest",
          jestConfigFile = "jest.config.ts",
          jest_test_discovery = false,
          -- results_path = "coverage/coverage-final.json",
          env = { COVERAGE = true, NODE_ENV = "test" },
          cwd = function()
            return vim.fn.getcwd()
          end,
        })
      )
      -- table.insert(opts.adapters, require("neotest-vitest"))
    end,
    -- opts = {
    --   adapters = {
    --     require("neotest-jest")({
    --       jestCommand = "yarn jest --",
    --       jestConfigFile = "jest.config.ts",
    --       -- env = { CI = true },
    --       cwd = function(path)
    --         return vim.fn.getcwd()
    --       end,
    --     }),
    --   },
    -- },
  },
  -- {
  --   "nvim-neotest/neotest",
  --   dependencies = {
  --     "nvim-neotest/neotest-jest",
  --   },
  --   opts = {
  --     adapters = {
  --       require("neotest-jest")({
  --         jestCommand = "yarn jest --",
  --         jestConfigFile = "jest.config.ts",
  --         -- env = { CI = true },
  --         cwd = function(path)
  --           return vim.fn.getcwd()
  --         end,
  --       }),
  --     },
  --   },
  -- },
}
