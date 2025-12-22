return {
  "stevearc/aerial.nvim",
  event = "VeryLazy",
  opts = function()
    -- 通用 Nerd Font / Unicode 图标，宽度安全
    local icons = {
      File          = "",
      Module        = "",
      Namespace     = "",
      Package       = "",
      Class         = "",
      Method        = "",
      Property      = "",
      Field         = "",
      Constructor   = "",
      Enum          = "",
      Interface     = "",
      Function      = "󰊕",   -- 更安全的 Function 符号
      Variable      = "",
      Constant      = "",
      String        = "",
      Number        = "",
      Boolean       = "◩",
      Array         = "",
      Object        = "",
      Key           = "",
      Null          = "∅",   -- Unicode 安全
      EnumMember    = "",
      Struct        = "",
      Event         = "",
      Operator      = "",
      TypeParameter = "",
    }

    local opts = {
      attach_mode = "global",
      backends = { "lsp", "treesitter", "markdown", "man" },
      show_guides = true,
      layout = {
        resize_to_content = false,
        win_opts = {
          winhl = "Normal:NormalFloat,FloatBorder:NormalFloat,SignColumn:SignColumnSB",
          signcolumn = "yes",
          statuscolumn = " ",
        },
      },
      icons = icons,
      filter_kind = false,
      guides = {
        mid_item   = "├╴",
        last_item  = "└╴",
        nested_top = "│ ",
        whitespace = "  ",
      },
    }
    return opts
  end,

	keys = {
  -- 侧边栏
  { "<leader>T", "<cmd>AerialToggle<CR>", desc = "Toggle Aerial floating window" },
  -- 浮动窗口
  { "<leader>t", "<cmd>AerialNavOpen<CR>", desc = "Open Aerial side panel" },
	}
}

