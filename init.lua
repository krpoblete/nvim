vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

vim.opt.smartindent = true
vim.opt.termguicolors = true

vim.opt.updatetime = 250
vim.opt.signcolumn = "yes"

vim.opt.clipboard = "unnamedplus"

vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

require("config.autocmds")
require("config.keymaps")
