-- 需要 nvim-lspconfig
local lspconfig = require("lspconfig")

lspconfig.pbls.setup {
  cmd = { "pbls" },  -- 命令，必须在 PATH 里
  filetypes = { "proto" }, -- 只处理 proto 文件
  root_dir = lspconfig.util.root_pattern("buf.yaml", "BUILD.bazel", ".git"),
  settings = {
    -- 可选: 可以添加 protolint 规则
  }
}
