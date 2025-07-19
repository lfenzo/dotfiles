vim.g.mapleader = " "

local map = vim.keymap.set -- for conciseness

-- Windows
map("n", "<leader>sv", "<C-w>v") -- split window vertically
map("n", "<leader>sh", "<C-w>s") -- split window horizontally
map("n", "<leader>sx", "<cmd>close<CR>") -- close current split window
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Tabs
map("n", "<leader>to", "<cmd>tabnew<CR>") -- open new tab
map("n", "<leader>tx", "<cmd>tabclose<CR>") -- close current tab
