vim.cmd("set scrolloff=8")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set tabstop=4 softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab")
vim.cmd("set smartindent")
vim.cmd("set backupcopy=no")

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("config.lazy")

vim.cmd("colorscheme catppuccin-mocha")

vim.diagnostic.config({
  virtual_text = false,
})

vim.diagnostic.config({
    virtual_text = false,  -- Desativa o texto virtual (a mensagem completa do erro) ao lado do código
    signs = true,          -- Ativa os ícones no gutter
    underline = true,      -- Sublinha o código com erro
    update_in_insert = true,
    float = {
        border = "rounded",
        source = "always",
    }
})
vim.keymap.set('n', 'ge', vim.diagnostic.open_float)
