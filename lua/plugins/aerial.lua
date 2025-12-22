return {
  {
    "stevearc/aerial.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("aerial").setup()

      -- keybindings
      vim.keymap.set("n", "<leader>t", "<cmd>AerialToggle<CR>", { desc = "Toggle Aerial outline" })
      vim.keymap.set("n", "<leader>T", "<cmd>AerialNavOpen<CR>", { desc = "Open Aerial navigation" })
    end,
  }
}
