return {
  "andythigpen/nvim-coverage",
  opts = {
    config = function()
      require("nvim-coverage").setup({
        commands = true,
        coverage_dir = "./coverage",
        coverage_file = "coverage-final.json",
      })
    end,
  },
}
