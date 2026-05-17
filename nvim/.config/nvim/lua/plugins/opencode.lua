require("snacks").setup({
    input = {},
    picker = {
        actions = {
            opencode_send = function(...)
                return require("opencode").snacks_picker_send(...)
            end,
        },
        win = {
            input = {
                keys = {
                    ["<a-a>"] = {
                        "opencode_send",
                        mode = { "n", "i" },
                    },
                },
            },
        },
    },
})


vim.o.autoread = true -- Required for `opts.events.reload`

vim.keymap.set({ "n", "x" }, "<C-a>", function() require("opencode").ask("@this: ", { submit = true }) end, { desc = "Ask opencode…" })
vim.keymap.set({ "n", "x" }, "<C-x>", function() require("opencode").select() end, { desc = "Select opencode…" })
-- vim.keymap.set({ "n", "t" }, "<C-.>", function() require("opencode").toggle() end, { desc = "Toggle opencode" })
vim.keymap.set({ "n", "x" }, "go", function() return require("opencode").operator("@this ") end, {
  desc = "Add range to opencode",
  expr = true,
})
vim.keymap.set("n", "goo", function() return require("opencode").operator("@this ") .. "_" end, {
  desc = "Add line to opencode",
  expr = true,
})
