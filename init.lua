vim.cmd("set scrolloff=8")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set tabstop=4 softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab")
vim.cmd("set smartindent")

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("config.lazy")

vim.cmd("colorscheme catppuccin-mocha")


