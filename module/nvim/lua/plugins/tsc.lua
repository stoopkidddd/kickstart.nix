return {
  "dmmulroy/tsc.nvim",
  opts = {
    run_as_monorepo = true,
    use_trouble_qflist = true,
    flags = {
      watch = true,
      project = function()
        return vim.fn.getcwd() .. "tsconfig.json"
      end,
    },
  },
}
