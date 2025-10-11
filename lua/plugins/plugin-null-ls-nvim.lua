return {
	{
		event = "VeryLazy",
		"nvimtools/null-ls.nvim",
		config = function()
			local none_ls = require("none-ls")

			none_ls.setup({
				sources = {
					none_ls.builtins.formatting.ruff,
					none_ls.builtins.diagnostics.ruff
				},
			})
		end,
	},
}
