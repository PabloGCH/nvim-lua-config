--IMPORTANT: Don't forget to install netcoredbg
local dap = require('dap')

local HOME = os.getenv "HOME"
local DEBUGGER_LOCATION = HOME .. "/.config/nvim/netcoredbg"

dap.adapters.netcoredbg = {
  type = 'executable',
  command = DEBUGGER_LOCATION .. '/netcoredbg',
  args = {'--interpreter=vscode'}
}


dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
        return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
    end,
  },
}
