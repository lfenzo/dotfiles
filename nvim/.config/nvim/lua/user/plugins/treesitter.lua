return {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            sync_install = true,
            indent = { enable = true },
            ensure_installed = {
                "c",
                "lua",
                "html",
                "make",
                "markdown",
                "markdown_inline",
                "vim",
                "python",
                "julia",
                "yaml",
                "json",
            }
        })
    end
}
