-- ~/.config/nvim/init.lua

-- 设置 Neovim 的运行时路径，确保 lua 目录在路径中

vim.opt.runtimepath:append('~/.config/nvim')

--
-- Add lazy to path
require("utils")

require("core")

require("plugins")

require("lsp")

vim.o.clipboard = "unnamedplus"

-- 加载 autoload.lua 递归加载 plugins 目录
-- local load_plugins = require("utils.autoload")

-- 调用 lazy.nvim 并自动加载 plugins/
-- require("lazy").setup(load_plugins("plugins"))
-- 
-- require("lazy").setup(load_plugins("core"))
-- 
-- require("lazy").setup(load_plugins("lsp"))

vim.cmd [[colorscheme catppuccin]]
