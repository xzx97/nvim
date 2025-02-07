local function load_plugins(dir)
  local plugins = {}
  local scan = require("plenary.scandir") -- 需要安装 plenary.nvim

  -- 递归扫描所有 Lua 文件
  local files = scan.scan_dir(vim.fn.stdpath("config") .. "/lua/" .. dir, {
    depth = 3,       -- 允许递归扫描
    add_dirs = false -- 只获取文件，不获取目录
  })

  for _, file in ipairs(files) do
    local module = file:match(".*/(.*)%.lua$") -- 提取 Lua 文件名
    if module and module ~= "init" then
      -- 这里修正路径，确保 require 语法正确
      local mod_path = file:gsub(vim.fn.stdpath("config") .. "/lua/", "") -- 去掉绝对路径
      mod_path = mod_path:gsub("/", "."):gsub("%.lua$", "") -- 转换为 Lua 模块路径

      local ok, mod = pcall(require, mod_path)
      if ok then
        table.insert(plugins, mod)
      else
        vim.notify("Error loading module: " .. mod_path .. "\n" .. mod, vim.log.levels.ERROR)
      end
    end
  end

  return plugins
end

return load_plugins
