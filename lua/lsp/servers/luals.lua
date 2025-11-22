-- lua/lsp/servers/luals.lua
return {
  name = "lua_ls",
  filetypes = { "lua" },

  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
    ["lua_ls"] = {},
  },
}

