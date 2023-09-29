--IMPORTANT: Don't forget to install netcoredbg
--local dap = require('dap')





local dap = require('dap')

local HOME = os.getenv("HOME")
local DEBUGGER_LOCATION = HOME .. "/.config/nvim/netcoredbg"


dap.adapters.coreclr = {
    type = 'executable',
    command = DEBUGGER_LOCATION .. '/netcoredbg',
    args = {'--interpreter=vscode'}
}



dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    --program = get_dll()
    program = function()
        return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
    end,
  },
}




vim.keymap.set('n', '<F5>', ':lua require"dap".continue()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<F10>', ':lua require"dap".step_over()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<F11>', ':lua require"dap".step_into()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<F12>', ':lua require"dap".step_out()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<A-b>', ':lua require"dap".toggle_breakpoint()<CR>', {noremap = true, silent = true})
--vim.keymap.set('n', '<A-B>', ':lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>', {noremap = true, silent = true})
--vim.keymap.set('n', '<A-lp>', ':lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>', {noremap = true, silent = true})
--vim.keymap.set('n', '<A-o>', ':lua require"dap".repl.open()<CR>', {noremap = true, silent = true})
--vim.keymap.set('n', '<A-rl>', ':lua require"dap".run_last()<CR>', {noremap = true, silent = true})


