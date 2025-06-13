local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({buffer = bufnr})
end)

lsp_zero.set_server_config({
    on_init = function(client)
        client.server_capabilities.semanticTokensProvider = nil
    end,
})

-- to learn how to use mason.nvim with lsp-zero
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
require('mason').setup({})

local cmp = require('cmp')
cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<C-i>'] = cmp.mapping.confirm(),
        ['<C-n>'] = cmp.mapping.select_next_item({behavior = 'select'}),
        ['<C-p>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
    })
})

local lspconfig = require("lspconfig")
lspconfig.pylsp.setup {
    settings = {
        pylsp = {
            plugins = {
                pycodestyle = {
                    enabled = true,
                    maxLineLength = 99,  -- Adjust max-line-length as needed
                },
                pyLSPPlugins = {
                    disable = {"autopep8"},
                },
            },
            completion = {
                fuzzyMatcher = true,
            },
        },
    },
}
