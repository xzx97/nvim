local lspconfig = require('lspconfig')

lspconfig.clangd.setup {
  cmd = { "clangd", "--background-index", "--clang-tidy" },
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },

  root_dir = lspconfig.util.root_pattern(
    "compile_commands.json",
    "compile_flags.txt",
    ".git"
  ),

  -- 这里可以放 clangd 专用配置
  init_options = {
    clangdFileStatus = true,  -- 显示文件状态
    usePlaceholders = true,   -- 补全时插入参数占位符
    completeUnimported = true,
  },
}

