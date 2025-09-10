return {
    "echasnovski/mini.indentscope",
    version = false,
    config = function()
        local indentscope = require("mini.indentscope")

        indentscope.setup({
            draw = {
                delay = 0,
                animation = indentscope.gen_animation.none(),
            },
            symbol = "┊",
            options = {
                try_as_border = true,
            },
            mappings = {
                object_scope = "ii",
                object_scope_with_border = "ai",
            },
        })
    end,
}
