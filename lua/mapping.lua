-- QUIT WITHOUT SAVING
vim.keymap.set('n', '<A-q>', ':qa!<CR>', {noremap = true})
-- OPEN TERMINAL
vim.keymap.set('n', '<A-c>', ':term<CR>', {noremap = true})
-- SAVE FILE
vim.keymap.set('n', '<C-s>', ':w<CR>', {noremap = true})
-- QUIT TERMINAL MODE
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', {noremap = true})
-- MOVE SELECTED ROWS UP
vim.keymap.set('v', '<A-j>', ':m \'>+1<CR>gv=gv', {noremap = true})
-- MOVE SELECTED ROWS DOWN
vim.keymap.set('v', '<A-k>', ':m \'<-2<CR>gv=gv', {noremap = true})
-- OPEN FUZZY FINDER
vim.keymap.set('n', '<A-f>', ':Telescope find_files<CR>', {noremap = true})
-- OPEN FILE EXPLORER
vim.keymap.set('n', '<A-e>', ':NvimTreeToggle<CR>', {noremap = true})
-- CLOSE FILE EXPLORER
vim.keymap.set('n', '<Esc>', ':NvimTreeClose<CR>', {noremap = true})
-- RUN FORMATTER
vim.keymap.set('n', '<C-f>', ':lua format()<CR>', { noremap = true })
-- INCREASE VERTICAL SIZE
vim.keymap.set('n', '<C-k>', ':vertical resize +2<CR>', {noremap = true})
-- DECREASE VERTICAL SIZE
vim.keymap.set('n', '<C-j>', ':vertical resize -2<CR>', {noremap = true})
-- INCREASE HORIZONTAL SIZE WHEN Ctrl + Shift + k is pressed
vim.keymap.set('n', '<C-A-k>', ':horizontal resize +2<CR>', {noremap = true})
-- DECREASE HORIZONTAL SIZE
vim.keymap.set('n', '<C-A-j>', ':horizontal resize -2<CR>', {noremap = true})
-- START DEBUGGER
vim.keymap.set('n', '<F5>', ':lua require"dap".continue()<CR>', {noremap = true, silent = true})
-- STEP OVER
vim.keymap.set('n', '<F10>', ':lua require"dap".step_over()<CR>', {noremap = true, silent = true})
-- STEP INTO
vim.keymap.set('n', '<F11>', ':lua require"dap".step_into()<CR>', {noremap = true, silent = true})
-- STEP OUT
vim.keymap.set('n', '<F12>', ':lua require"dap".step_out()<CR>', {noremap = true, silent = true})
-- TOGGLE BREAKPOINT
vim.keymap.set('n', '<A-b>', ':lua require"dap".toggle_breakpoint()<CR>', {noremap = true, silent = true})
-- OPENS NEW TAB
vim.keymap.set('n', '<A-t>', ':tabnew<CR>', {noremap = true, silent = true})
-- JUMPS TO TAB example
vim.keymap.set('n', '<A-1>', '1gt', {noremap = true, silent = true})
vim.keymap.set('n', '<A-2>', '2gt', {noremap = true, silent = true})
vim.keymap.set('n', '<A-3>', '3gt', {noremap = true, silent = true})
vim.keymap.set('n', '<A-4>', '4gt', {noremap = true, silent = true})
vim.keymap.set('n', '<A-5>', '5gt', {noremap = true, silent = true})
vim.keymap.set('n', '<A-6>', '6gt', {noremap = true, silent = true})
vim.keymap.set('n', '<A-7>', '7gt', {noremap = true, silent = true})
vim.keymap.set('n', '<A-8>', '8gt', {noremap = true, silent = true})
vim.keymap.set('n', '<A-9>', '9gt', {noremap = true, silent = true})
-- MOVE TO NEXT TAB
vim.keymap.set('n', '<A-l>', ':tabnext<CR>', {noremap = true, silent = true})
-- MOVE TO PREVIOUS TAB
vim.keymap.set('n', '<A-h>', ':tabNext<CR>', {noremap = true, silent = true})










-- OLD BUFFERLINE MAPPINGS
-- MOVE TO PREVIOUS/NEXT BUFFER
--vim.keymap.set('n', '<A-l>', ':BufferLineCycleNext<CR>', {noremap = true})
--vim.keymap.set('n', '<A-h>', ':BufferLineCyclePrev<CR>', {noremap = true})
---- RE-ORDER TO PREVIOUS/NEXT BUFFER
--vim.keymap.set('n', '<A-<>', ':BufferLineMovePrev<CR>', {noremap = true})
--vim.keymap.set('n', '<A->>', ':BufferLineMoveNext<CR>', {noremap = true})
-- CLOSE BUFFER
--vim.keymap.set('n', '<A-c>', ':Bdelete!<CR>', {noremap = true, silent = true})
-- JUMP TO BUFFER
--vim.keymap.set('n', '<A-1>', ':lua require("bufferline").go_to_buffer(1, true)<CR>', {noremap = true})
--vim.keymap.set('n', '<A-2>', ':lua require("bufferline").go_to_buffer(2, true)<CR>', {noremap = true})
--vim.keymap.set('n', '<A-3>', ':lua require("bufferline").go_to_buffer(3, true)<CR>', {noremap = true})
--vim.keymap.set('n', '<A-4>', ':lua require("bufferline").go_to_buffer(4, true)<CR>', {noremap = true})
--vim.keymap.set('n', '<A-5>', ':lua require("bufferline").go_to_buffer(5, true)<CR>', {noremap = true})
--vim.keymap.set('n', '<A-6>', ':lua require("bufferline").go_to_buffer(6, true)<CR>', {noremap = true})
--vim.keymap.set('n', '<A-7>', ':lua require("bufferline").go_to_buffer(7, true)<CR>', {noremap = true})
--vim.keymap.set('n', '<A-8>', ':lua require("bufferline").go_to_buffer(8, true)<CR>', {noremap = true})
--vim.keymap.set('n', '<A-9>', ':lua require("bufferline").go_to_buffer(9, true)<CR>', {noremap = true})
