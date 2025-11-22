-- lua/lsp/servers/basedpyright.lua
return {
  name = "basedpyright",
  filetypes = { "python" },

  settings = {
    basedpyright = {
      -- Using Ruff's import organizer
      disableOrganizeImports = true,
    },
    python = {
      analysis = {
        -- Ignore all files for analysis to exclusively use Ruff for linting
        ignore = { "*" },
      },
    },
  },
}

