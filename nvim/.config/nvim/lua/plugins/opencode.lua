local opencode = require("opencode")

vim.o.autoread = true

require("snacks").setup({
    input = {},
    picker = {
        actions = {
            opencode_send = function(...)
                return opencode.snacks_picker_send(...)
            end,
        },
        win = {
            input = {
                keys = {
                    ["<a-a>"] = { "opencode_send", mode = { "n", "i" } },
                },
            },
        },
    },
})

local map = vim.keymap.set

map({ "n", "x" }, "<leader>o", function()
    opencode.ask("@this: ", { submit = true })
end, { desc = "Ask opencode…" })

map({ "n", "x" }, "<C-x>", function()
    opencode.select()
end, { desc = "Select opencode…" })

map({ "n", "x" }, "go", function()
    return opencode.operator("@this ")
end, { desc = "Add range to opencode", expr = true })

map("n", "goo", function()
    return opencode.operator("@this ") .. "_"
end, { desc = "Add line to opencode", expr = true })
