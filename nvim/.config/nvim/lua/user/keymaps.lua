local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

--
-- Pluging
--

-- Neotree
keymap("n", "<Leader>e", ":Neotree toggle<cr>", opts)

-- Telescope
vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, {})
vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, {})
vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, {})
vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, {})

-- Lazygit
vim.keymap.set('n', '<leader>gg', ":LazyGit<CR>", opts)

-- Debug
vim.keymap.set('n', '<Leader>db', require('dap').toggle_breakpoint, {})
vim.keymap.set('n', '<Leader>dr', require('dap').repl.open, {})
vim.keymap.set('n', '<Leader>dc', require('dap').continue, {})
vim.keymap.set('n', '<Leader>di', require('dap').step_into, {})
vim.keymap.set('n', '<Leader>do', require('dap').step_over, {})
vim.keymap.set('n', '<Leader>dO', require('dap').step_out, {})
vim.keymap.set('n', '<Leader>dq', function()
    local dap, dapui = require('dap'), require('dapui')
    dapui.close()       -- Close dap-ui panes
    dap.repl.close()    -- Close the REPL if open
    dap.disconnect()    -- Disconnect the debugger
end, {})
