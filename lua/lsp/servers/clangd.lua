-- lua/lsp/servers/clangd.lua
local util = require("lspconfig.util")

return {
  name = "clangd",

  cmd = { "clangd", "--background-index", "--clang-tidy" },

  filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },

  root_dir = util.root_pattern(
    "compile_commands.json",
    "compile_flags.txt",
    ".git"
  ),

  init_options = {
    clangdFileStatus = true,
    usePlaceholders = true,
    completeUnimported = true,
  },
}

