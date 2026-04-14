require("tree-sitter-manager").setup({})

vim.keymap.set("n", "<leader>tm", "<cmd>TSManager<cr>", { desc = "Open TreeSitter manager" })
