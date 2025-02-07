local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- 先手动加载 plenary.nvim 避免循环依赖
local plenary_path = vim.fn.stdpath("data") .. "/lazy/plenary.nvim"
if vim.uv.fs_stat(plenary_path) then
  vim.opt.rtp:prepend(plenary_path)
end

