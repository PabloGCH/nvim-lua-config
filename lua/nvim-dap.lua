--IMPORTANT: Don't forget to install netcoredbg
local dap = require('dap')

local HOME = os.getenv("HOME")
local DEBUGGER_LOCATION = HOME .. "/.config/nvim/netcoredbg"

dap.adapters.coreclr = {
    type = 'executable',
    command = DEBUGGER_LOCATION .. '/netcoredbg',
    args = {'--interpreter=vscode'}
}

vim.g.dotnet_build_project = function()
    local default_path = vim.fn.getcwd() .. '/'
    if vim.g['dotnet_last_proj_path'] ~= nil then
        default_path = vim.g['dotnet_last_proj_path']
    end
    local path = vim.fn.input('Path to your *proj file', default_path, 'file')
    vim.g['dotnet_last_proj_path'] = path
    local cmd = 'dotnet build -c Debug ' .. path .. ' > /dev/null'
    print('Cmd to execute: ' .. cmd)
    local f = os.execute(cmd)
    if f == 0 then
        print('\nBuild: ✔️ ')
    else
        print('\nBuild: ❌ (code: ' .. f .. ')')
    end
end


vim.g.dotnet_get_dll_path = function()
    local request = function()
        return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
    end

    if vim.g['dotnet_last_dll_path'] == nil then
        vim.g['dotnet_last_dll_path'] = request()
    else
        if vim.fn.confirm('Do you want to change the path to dll?\n' .. vim.g['dotnet_last_dll_path'], '&yes\n&no', 2) == 1 then
            vim.g['dotnet_last_dll_path'] = request()
        end
    end

    return vim.g['dotnet_last_dll_path']
end

--local config = {
--    {
--        type = "coreclr",
--        name = "launch - netcoredbg",
--        request = "launch",
--        program = function()
--            if vim.fn.confirm('Should I recompile first?', '&yes\n&no', 2) == 1 then
--                vim.g.dotnet_build_project()
--            end
--            return vim.g.dotnet_get_dll_path()
--        end,
--    },
--}

--dap.configurations.cs = config
--dap.configurations.fsharp = config


function debugCsharp()
    --local environment =
    --vim.ui.input({prompt = 'Enter environment name: '}, function(_, line)
    --    return line
    --end)
    local environment = 'Development'
    local args = {}
    if environment ~= nil then
        args = {'--environment', environment}
    end

    dap.run({
        type = 'coreclr',
        name = 'launch - netcoredbg',
        request = 'launch',
        program = function()
            if vim.fn.confirm('Should I recompile first?', '&yes\n&no', 2) == 1 then
                vim.g.dotnet_build_project()
            end
            return vim.g.dotnet_get_dll_path()
        end,
        args = args,
    })
end



vim.keymap.set('n', '<F5>', ':lua debugCsharp()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<F10>', ':lua require"dap".step_over()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<F11>', ':lua require"dap".step_into()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<F12>', ':lua require"dap".step_out()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<A-b>', ':lua require"dap".toggle_breakpoint()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<A-B>', ':lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<A-lp>', ':lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<A-o>', ':lua require"dap".repl.open()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<A-rl>', ':lua require"dap".run_last()<CR>', {noremap = true, silent = true})






