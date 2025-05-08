-- Options
vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.scrolloff = 5

-- Keybindings
vim.g.mapleader = " "

vim.keymap.set('n', '<leader>p', vim.cmd.Ex)

-- Plugins
require('config.lazy')
