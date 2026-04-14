require("blink.cmp").setup({
    keymap = {
        preset = "default", ["<C-i>"] = { "accept", "fallback" }
    },
    appearance = {
        nerd_font_variant = "mono"
    },
    completion = {
        documentation = {
            auto_show = false,
            window = {
                border = "single"
            }
        },
        list = {
            selection = {
                preselect = false,
                auto_insert = false
            }
        },
    },
    sources = {
        default = { "lsp", "path", "snippets", "buffer" },
    },
    fuzzy = {
        implementation = "lua"
    },
})
