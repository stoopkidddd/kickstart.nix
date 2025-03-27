local function biome_lsp_or_prettier(bufnr)
  -- local has_biome_lsp = vim.lsp.get_active_clients({
  --   bufnr = bufnr,
  --   name = "biome",
  -- })[1]
  -- if has_biome_lsp then
  --   return {}
  -- end
  local has_prettier = vim.fs.find({
    -- https://prettier.io/docs/en/configuration.html
    ".prettierrc",
    ".prettierrc.json",
    ".prettierrc.yml",
    ".prettierrc.yaml",
    ".prettierrc.json5",
    ".prettierrc.js",
    ".prettierrc.cjs",
    ".prettierrc.toml",
    "prettier.config.js",
    "prettier.config.cjs",
  }, { upward = true })[1]
  if has_prettier then
    return { "prettier" }
  end
  return { "prettier" }
end

return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      ["javascript"] = biome_lsp_or_prettier,
      ["javascriptreact"] = biome_lsp_or_prettier,
      ["typescript"] = biome_lsp_or_prettier,
      ["typescriptreact"] = biome_lsp_or_prettier,
      -- ["vue"] = { "biome" },
      -- ["css"] = { "biome" },
      -- ["scss"] = { "biome" },
      -- ["less"] = { "biome" },
      -- ["html"] = { "biome" },
      -- ["json"] = { "biome" },
      -- ["jsonc"] = { "biome" },
      -- ["yaml"] = { "biome" },
      ["markdown"] = biome_lsp_or_prettier,
      ["markdown.mdx"] = biome_lsp_or_prettier,
      -- ["graphql"] = { "biome" },
      -- ["handlebars"] = { "biome" },
    },
  },
}
