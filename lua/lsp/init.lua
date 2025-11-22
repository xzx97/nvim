-- lua/lsp/init.lua
local M = {}

-- 统一 capabilities（如你使用 nvim-cmp）
local capabilities = vim.lsp.protocol.make_client_capabilities()
pcall(function()
  capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
end)

-- 加载 servers 下所有配置
local servers = {
  "basedpyright",
  "clangd",
  "luals",
  "pbls",
  "ruff",
}

for _, server in ipairs(servers) do
  local ok, config = pcall(require, "lsp.servers." .. server)
  if ok then
    -- 注入 capabilities，如果子配置未提供
    config.capabilities = vim.tbl_deep_extend(
      "force",
      config.capabilities or {},
      capabilities
    )

    -- 1. 注册配置（替代 lspconfig.server.setup）
    vim.lsp.config(config.name, config)
  else
    vim.notify("LSP: failed loading server: " .. server)
  end
end


-- 2. 自动按 FileType 启动 server
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function(event)
    local ft = event.match
    -- 让每个 server 自己声明有哪些 filetypes
    for _, server in ipairs(servers) do
      local cfg = require("lsp.servers." .. server)
      if cfg.filetypes and vim.tbl_contains(cfg.filetypes, ft) then
        vim.lsp.enable(cfg.name)
      end
    end
  end
})

return M

