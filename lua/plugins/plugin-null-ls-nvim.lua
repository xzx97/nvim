return {
	{
		event = "VeryLazy",
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			local null_ls = require("null-ls")

			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.ruff,
					null_ls.builtins.diagnostics.ruff
				},
			})
		end,
	},
}
