return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui",
        "nvim-neotest/nvim-nio",
        "leoluz/nvim-dap-go",
    },
    config = function()
        local dap = require("dap")
        local dapui = require("dapui")
        local dapgo = require("dap-go")

        dapui.setup()
        dapgo.setup()

        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end
        vim.keymap.set("n", "<Leader>dc", dap.continue, {})
        vim.keymap.set("n", "<Leader>do", dap.step_over, {})
        vim.keymap.set("n", "<Leader>di", dap.step_into, {})
        vim.keymap.set("n", "<Leader>dot", dap.step_out, {})
        vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint, {})
        vim.keymap.set("n", "<Leader>dB", dap.set_breakpoint, {})
    end,
}
