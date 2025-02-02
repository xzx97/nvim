-- <leader> key
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

-- Local variable
local map = vim.keymap.set
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

-- Bufferline
map('n', '<leader>1', ':BufferLineGoToBuffer 1<CR>', opt)
map('n', '<leader>2', ':BufferLineGoToBuffer 2<CR>', opt)
map('n', '<leader>3', ':BufferLineGoToBuffer 3<CR>', opt)
map('n', '<leader>4', ':BufferLineGoToBuffer 4<CR>', opt)
map('n', '<leader>5', ':BufferLineGoToBuffer 5<CR>', opt)
map('n', '<leader>6', ':BufferLineGoToBuffer 6<CR>', opt)
map('n', '<leader>7', ':BufferLineGoToBuffer 7<CR>', opt)
map('n', '<leader>8', ':BufferLineGoToBuffer 8<CR>', opt)
map('n', '<leader>9', ':BufferLineGoToBuffer 9<CR>', opt)
map('n', '<leader>bn', ':BufferLineCycleNext<CR>', opt)
map('n', '<leader>bp', ':BufferLineCyclePrev<CR>', opt)
map("n", "<leader>c", ":bdelete %<CR>", opt)
