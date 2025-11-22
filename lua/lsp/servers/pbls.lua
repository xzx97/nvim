-- lua/lsp/servers/pbls.lua
local util = require("lspconfig.util")

return {
  name = "pbls",

  cmd = { "pbls" },

  filetypes = { "proto" },

  root_dir = util.root_pattern("buf.yaml", "BUILD.bazel", ".git"),

  settings = {
    -- protolint 之类的配置可放这
  },
}

