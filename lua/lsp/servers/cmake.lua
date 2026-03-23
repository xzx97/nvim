return {
  name = "neocmake",
  -- 启动命令，通常 Mason 安装后会自动加入 PATH
  cmd = { "neocmake" },
  
  -- 指定生效的文件类型
  filetypes = { "cmake", "CMakeLists.txt" },

  -- neocmake 的初始化选项
  init_options = {
    -- 建议开启，用于扫描项目中的 CMake 依赖
    scan_cmake_in_package = true,
    -- 格式化配置（如果你的环境中安装了 cmake-format）
    format = {
      enable = true,
    },
  },

  -- 如果你以后想自定义 root 目录识别逻辑，可以添加 root_dir
  -- root_dir = require('lspconfig.util').root_pattern("CMakeLists.txt", ".git"),
}
