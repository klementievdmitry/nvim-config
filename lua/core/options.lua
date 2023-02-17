local opt = vim.o

opt.number = true
opt.relativenumber = true
opt.nocompatible = true
opt.showmatch = true
opt.mouse = "v"
opt.hlsearch = true
opt.incsearch = true
opt.tabstop = 4
opt.softtabstop = 4
opt.expandtab = true
opt.shiftwidth = 4
opt.autoindent = true
opt.cc = 80
opt.syntax = true
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.cursorline = true
opt.ttyfast = true
opt.noswapfile = true
opt.backupdir = vim.fn.stdpath("data") .. "/backup/"

