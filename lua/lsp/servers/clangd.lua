return {
  name = "clangd",
  cmd = { "clangd", "--background-index", "--clang-tidy" },
  filetypes = { "c", "cpp", "cc", "objc", "objcpp", "cuda" },

  init_options = {
    clangdFileStatus = true,
    usePlaceholders = true,
    completeUnimported = true,
  },
}
