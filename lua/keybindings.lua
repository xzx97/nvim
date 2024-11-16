-- <leader> key
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

-- Local variable
local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

-- Scroll Up and Down
map("n", "<C-u>", "9k", opt)
map("n", "<C-d>", "9j", opt)

-- Indent
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)

-- Windows Size Control
map("n", "s>", ":vertical resize +20<CR>", opt)
map("n", "s<", ":vertical resize -20<CR>", opt)
map("n", "s=", "<C-w>=", opt)
map("n", "sj", ":resize +10<CR>", opt)
map("n", "sk", ":resize -10<CR>", opt)

-- Windows jump
map('n', '<C-h>', '<CMD>NavigatorLeft<CR>', opt)
map('n', '<C-l>', '<CMD>NavigatorRight<CR>', opt)
map('n', '<C-k>', '<CMD>NavigatorUp<CR>', opt)
map('n', '<C-j>', '<CMD>NavigatorDown<CR>', opt)
-- map('n', '<C-p>', '<CMD>NavigatorPrevious<CR>', opt)
-- map("n", "<C-h>", "<C-w>h", opt)
-- map("n", "<C-j>", "<C-w>j", opt)
-- map("n", "<C-k>", "<C-w>k", opt)
-- map("n", "<C-l>", "<C-w>l", opt)

-- NvimTreeToggle
map("n", "<C-m>", ":NvimTreeToggle<CR>", opt)

-- Bufferline
map('n', '<M-1>', ':BufferLineGoToBuffer 1<CR>', opt)
map('n', '<M-2>', ':BufferLineGoToBuffer 2<CR>', opt)
map('n', '<M-3>', ':BufferLineGoToBuffer 3<CR>', opt)
map('n', '<M-4>', ':BufferLineGoToBuffer 4<CR>', opt)
map('n', '<M-5>', ':BufferLineGoToBuffer 5<CR>', opt)
map('n', '<M-6>', ':BufferLineGoToBuffer 6<CR>', opt)
map('n', '<M-7>', ':BufferLineGoToBuffer 7<CR>', opt)
map('n', '<M-8>', ':BufferLineGoToBuffer 8<CR>', opt)
map('n', '<M-9>', ':BufferLineGoToBuffer 9<CR>', opt)
map('n', '<leader>bn', ':BufferLineCycleNext<CR>', opt)
map('n', '<leader>bp', ':BufferLineCyclePrev<CR>', opt)
