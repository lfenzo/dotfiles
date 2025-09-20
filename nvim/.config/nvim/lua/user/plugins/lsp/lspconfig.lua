return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "saghen/blink.cmp",
            {
                "folke/lazydev.nvim",
                opts = {
                    library = {
                        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                    },
                },
            },
        },
        config = function()
            local capabilities = require('blink.cmp').get_lsp_capabilities({
                textDocument = { completion = { completionItem = { snippetSupport = false } } },
            })

            vim.lsp.enable({
                "lua_ls",
                "julials",
                "pylsp",
            })

            -- Lua LS
            vim.lsp.config("lua_ls", {
                capabilities = capabilities,
                settings = {
                    Lua = {
                        completion = {
                            callSnippet = "Disable",
                            keywordSnippet = "Disable",
                        }
                    }
                }
            })

            -- Julia LSP (install LanguageServer.jl in the global environment)
            vim.lsp.config("julials", {
                capabilities = capabilities,
                cmd = {"julia", "-e", [[ using LanguageServer; runserver() ]]},
            })

            -- Python LSP
            vim.lsp.config("pylsp", {
                capabilities = capabilities,
                settings = {
                    pylsp = {
                        plugins = {
                            pycodestyle = { enabled = true, maxLineLength = 99 },
                            autopep8 = { enabled = false },
                            yapf = { enabled = false },
                            pylint = { enabled = false },
                            mccabe = { enabled = false },
                            pyflakes = { enabled = true },
                            pyls_mypy = { enabled = true },
                        },
                        configurationSources = { "pycodestyle" },
                    },
                },
            })
        end,
    },
}
