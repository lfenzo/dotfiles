local blink = require("blink.cmp")
local capabilities = blink.get_lsp_capabilities({
    textDocument = {
        completion = {
            completionItem = {
                snippetSupport = false,
            },
        },
    },
})

vim.lsp.enable({
    "lua_ls",
    "julials",
    "pylsp",
})

vim.lsp.config("lua_ls", {
    capabilities = capabilities,
    settings = {
        Lua = {
            completion = {
                callSnippet = "Disable",
                keywordSnippet = "Disable",
            },
        },
    },
})

vim.lsp.config("julials", {
    capabilities = capabilities,
    cmd = { "julia", "-e", "using LanguageServer; runserver()" },
})

vim.lsp.config("pylsp", {
    capabilities = capabilities,
    settings = {
        pylsp = {
            plugins = {
                pycodestyle = { enabled = true, maxLineLength = 99 },
                pyflakes = { enabled = true },
                pyls_mypy = { enabled = true },
                autopep8 = { enabled = false },
                yapf = { enabled = false },
                pylint = { enabled = false },
                mccabe = { enabled = false },
            },
            configurationSources = { "pycodestyle" },
        },
    },
})
