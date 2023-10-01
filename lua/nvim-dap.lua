--IMPORTANT: Don't forget to install netcoredbg
--local dap = require('dap')


local dap = require('dap')
local HOME = os.getenv("HOME")
local DEBUGGER_LOCATION = HOME .. "/.config/nvim/netcoredbg"

-- FUNCTION TO GET DLL
-- ===========================0
-- I actually got this code from help of github copilot, but I only have a general idea of how it works
function get_dll() --Looks for dlls in ./bin/Debug/net* and lists them
    -- finds .csproj file in current directory
    local csproj = vim.fn.globpath(vim.fn.getcwd(), '*.csproj', false, true)[1]
    -- gets the name of the file from the path (without the extension)
    local filename = vim.fn.fnamemodify(csproj, ':t:r')
    --finds all dlls in bin/Debug/net*
    local dlls = vim.fn.globpath(vim.fn.getcwd() .. '/bin/Debug/', 'net*/*.dll', false, true)
    if #dlls == 0 then
        print('No dll found')
        return
    end
    -- filters out the dlls that don't match the current filename
    dlls = vim.tbl_filter(function(item)
        return vim.fn.fnamemodify(item, ':t:r') == filename
    end, dlls)
    -- cretes a list of filenames from the full paths
    local choices = {}
    for _, dll in ipairs(dlls) do
        local filename = dll
        table.insert(choices, filename)
    end
    -- shows the list of dlls and returns the selected one
    local choice = vim.fn.inputlist(choices)
    if choice <= 0 then
        return
    end
    --returns the full path to the dll
    return dlls[choice]
end

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
    program = get_dll
    -- The following code is from daps documentation is commented out because it's not very practical
    -- to write the path to the dll every time you want to debug
    -- it's commented out because i don't want to loose it
    --program = function() 
    --    return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
    --end,
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


