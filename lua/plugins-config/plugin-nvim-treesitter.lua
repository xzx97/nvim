return {
	{
		event = "VeryLazy",
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				ensure_installed = {
					"c", "cpp", "cmake", "lua", "vim", "vimdoc",
					"query", "heex", "javascript", "html",
					"python", "markdown", "markdown_inline" },
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end
	}
}
