return {
	{
		"numToStr/Navigator.nvim",
		config = function()
			require("Navigator").setup()

			-- Local variable
			local map = vim.keymap.set
			local opt = { noremap = true, silent = true }

			-- Windows jump
			map('n', '<C-h>', '<CMD>NavigatorLeft<CR>', opt)
			map('n', '<C-l>', '<CMD>NavigatorRight<CR>', opt)
			map('n', '<C-k>', '<CMD>NavigatorUp<CR>', opt)
			map('n', '<C-j>', '<CMD>NavigatorDown<CR>', opt)
		end,
	},
}
