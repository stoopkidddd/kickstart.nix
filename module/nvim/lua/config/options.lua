-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.filetype.add({ extension = { templ = "templ" } })

vim.opt.clipboard = ""

vim.opt.scrolloff = 10

vim.g.snacks_animate = false

vim.g.llama_config = { show_info = 0 }
