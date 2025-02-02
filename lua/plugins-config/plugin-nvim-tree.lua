return {
	{
		event = "VeryLazy",
		"nvim-tree/nvim-tree.lua",
		version = "*",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("nvim-tree").setup {}

			-- Local variable
			local map = vim.keymap.set
			local opt = { noremap = true, silent = true }

			-- NvimTreeToggle
			map("n", "<C-m>", ":NvimTreeToggle<CR>", opt)
		end
	}
}
