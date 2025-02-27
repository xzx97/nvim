return {
	{
		event = "VeryLazy",
		"akinsho/bufferline.nvim",
		config = function()
			require("bufferline").setup()
			-- Local variable
			local map = vim.keymap.set
			local opt = { noremap = true, silent = true }

			-- Bufferline
			map('n', '<leader>1', ':BufferLineGoToBuffer 1<CR>', opt)
			map('n', '<leader>2', ':BufferLineGoToBuffer 2<CR>', opt)
			map('n', '<leader>3', ':BufferLineGoToBuffer 3<CR>', opt)
			map('n', '<leader>4', ':BufferLineGoToBuffer 4<CR>', opt)
			map('n', '<leader>5', ':BufferLineGoToBuffer 5<CR>', opt)
			map('n', '<leader>6', ':BufferLineGoToBuffer 6<CR>', opt)
			map('n', '<leader>7', ':BufferLineGoToBuffer 7<CR>', opt)
			map('n', '<leader>8', ':BufferLineGoToBuffer 8<CR>', opt)
			map('n', '<leader>9', ':BufferLineGoToBuffer 9<CR>', opt)
			map('n', '<leader>]', ':BufferLineCycleNext<CR>', opt)
			map('n', '<leader>[', ':BufferLineCyclePrev<CR>', opt)
			map("n", "<leader>c", ":bdelete %<CR>", opt)
		end,
	}
}
