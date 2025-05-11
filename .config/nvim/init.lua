-- Options
vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.scrolloff = 5

vim.opt.listchars = { tab = "▸ ", trail = "·", nbsp = "+" }
vim.opt.list = true

-- Keybindings
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>p", ":Ex<CR>")

vim.keymap.set("v", "<S-Up>", ":move '<-2<CR>gv=gv")
vim.keymap.set("v", "<S-Down>", ":move '>+1<CR>gv=gv")

vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Plugins
require('config.lazy')
