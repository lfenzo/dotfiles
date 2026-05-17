vim.g.mapleader = " "

-- Windows
vim.keymap.set("n", "<leader>si", "<C-w>x") -- switch panes in the current buffer
vim.keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>") -- close current split window

-- Split navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Split resize
vim.keymap.set("n", "<C-A-k>", "<cmd>resize -2<CR>")
vim.keymap.set("n", "<C-A-j>", "<cmd>resize +2<CR>")
vim.keymap.set("n", "<C-A-h>", "<cmd>vertical resize -2<CR>")
vim.keymap.set("n", "<C-A-l>", "<cmd>vertical resize +2<CR>")

-- Tabs
vim.keymap.set("n", "<leader>to", "<cmd>tab split<CR>")
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>")
vim.keymap.set("n", "<C-p>", ":tabnext<CR>")
vim.keymap.set("n", "<C-n>", ":tabprevious<CR>")
