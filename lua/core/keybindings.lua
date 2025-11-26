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

vim.diagnostic.config({
	virtual_text = true,
	-- virtual_lines = true
})
