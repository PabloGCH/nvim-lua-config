-- QUIT WITHOUT SAVING
vim.keymap.set('n', '<C-k>', ':qa!<CR>', {noremap = true})
-- OPEN TERMINAL
vim.keymap.set('n', '<A-a>', ':term<CR>', {noremap = true})
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
-- INCREASE HORIZONTAL SIZE WHEN Alt + k
vim.keymap.set('n', '<A-k>', ':vertical resize +2<CR>', {noremap = true})
-- DECREASE HORIZONTAL SIZE WHEN Alt + j
vim.keymap.set('n', '<A-j>', ':vertical resize -2<CR>', {noremap = true})
-- INCREASE VERTICAL SIZE WHEN Alt + shift + k
vim.keymap.set('n', '<A-S-k>', ':resize +2<CR>', {noremap = true})
-- DECREASE VERTICAL SIZE WHEN Alt + shift + j
vim.keymap.set('n', '<A-S-j>', ':resize -2<CR>', {noremap = true})












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
