return {
  "dmmulroy/tsc.nvim",
  opts = {
    run_as_monorepo = true,
    use_trouble_qflist = true,
    flags = {
      watch = false,
      project = function()
        return vim.fn.getcwd() .. "tsconfig.json"
      end,
    },
  },
}
