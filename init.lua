-- Add lazy to path
require("utils")

-- require("core")
-- 
-- require("plugins")
-- 
-- require("lsp")

-- 加载 autoload.lua 递归加载 plugins 目录
local load_plugins = require("utils.autoload")

-- 调用 lazy.nvim 并自动加载 plugins/
require("lazy").setup(load_plugins("plugins"))

require("lazy").setup(load_plugins("core"))

require("lazy").setup(load_plugins("lsp"))

vim.cmd [[colorscheme catppuccin]]
