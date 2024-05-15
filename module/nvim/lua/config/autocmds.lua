-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- turn off automatic wrap for gitcommit message
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("gitcommit_format"),
  pattern = { "gitcommit" },
  callback = function()
    vim.api.nvim_buf_set_option(0, "formatoptions", "t")
    vim.api.nvim_buf_set_option(0, "formatoptions", "l")
  end,
})
