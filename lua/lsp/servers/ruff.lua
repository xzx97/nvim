-- lua/lsp/servers/ruff.lua
return {
  name = "ruff",

  filetypes = { "python" },

  init_options = {
    settings = {
      logLevel = "debug",
    },
  },
}

