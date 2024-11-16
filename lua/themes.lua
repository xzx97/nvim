vim.cmd[[colorscheme tokyonight-moon]]

local colors = require("tokyonight.colors").setup() -- pass in any of the config options as explained above
local util = require("tokyonight.util")

-- aplugin.background = colors.bg_dark
-- aplugin.my_error = util.lighten(colors.red1, 0.3) -- number between 0 and 1. 0 results in white, 1 results in red1
