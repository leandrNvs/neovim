local o = vim.opt

vim.cmd([[ syntax on ]])

o.relativenumber = true
o.tabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.wrap = false
o.incsearch = true
o.hlsearch = true
o.ignorecase = true
o.smartcase = true
o.autoindent = true
o.smartindent = true
o.termguicolors = true

vim.g.indentLine_enabled = 1

vim.g.mapleader = "-"
