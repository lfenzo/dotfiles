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
            local lspconfig = require("lspconfig")
            local capabilities = require('blink.cmp').get_lsp_capabilities({
                textDocument = { completion = { completionItem = { snippetSupport = false } } },
            })

            -- Lua LS
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
                  settings = {
                    Lua = {
                        completion = {
                            callSnippet = 'Disable',
                            keywordSnippet = 'Disable',
                        }
                    }
                }
            })

             -- Julia LSP (install only LanguageServer.jl in the global environment)
            lspconfig.julials.setup({
                cmd = {"julia", "-e", [[ using LanguageServer; runserver() ]]},
                capabilities = capabilities,
            })

            -- Python LSP
            lspconfig.pylsp.setup({
                capabilities = capabilities,
                settings = {
                    pylsp = {
                        plugins = {
                            pycodestyle = {
                                enabled = true,
                                maxLineLength = 99,
                            },
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
