require("lazydev").setup({
    library = { plugins = { "nvim-dap-ui" } },
})

-- Setup dap and dap-ui
local dap = require('dap')

local dapui = require('dapui')
dapui.setup()

-- Automatically open dap-ui when debugging starts
dap.listeners.before.event_initialized["dapui_config"] = function()
    if vim.fn.exists(':Neotree') == 2 and vim.g.neotree_state ~= 'closed' then
        vim.cmd("Neotree close")
        vim.g.neotree_state = 'closed'
    end
    dapui.open()
end

-- Optional: Do not auto-close UI for better error visibility
-- dap.listeners.before.event_terminated["dapui_config"] = function()
--     dapui.close()
-- end

dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
end




-- Setup nvim-dap-python
local dap_python = require('dap-python')
dap_python.setup('python') -- Use 'python' to autodetect virtual environments

-- Ensure `justMyCode` is set for all Python configurations
for _, config in ipairs(dap.configurations.python or {}) do
    config.justMyCode = false
end
