vim.g.mapleader = " "

vim.keymap.set("i", "<C-Bs>", "<C-w>")

vim.keymap.set("v", "<S-Up>", ":move '<-2<CR>gv=gv")
vim.keymap.set("v", "<S-Down>", ":move '>+1<CR>gv=gv")