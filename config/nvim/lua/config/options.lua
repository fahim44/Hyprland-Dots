-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- NOTE: show both line & relative numbers same time in different column
-- :help statuscolumn
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.rnu = true
vim.opt.nu = true
vim.opt.statuscolumn = "%@SignCb@%s%=%T%@NumCb@%C|%{v:lnum}|%{v:relnum}|%T"

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

vim.opt.smartindent = true
