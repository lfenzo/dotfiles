vim.g.mapleader = " "

-- Windows
vim.keymap.set("n", "<leader>si", "<C-w>x") -- switch panes in the current buffer
vim.keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>") -- close current split window
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Tabs
vim.keymap.set("n", "<leader>to", "<cmd>tab split<CR>") -- open new tab with the current file
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>") -- close current tab
vim.keymap.set("n", "<C-p>", ":tabnext<CR>")
vim.keymap.set("n", "<C-n>", ":tabprevious<CR>")
