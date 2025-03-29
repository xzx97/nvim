return {
	{
		event = "VeryLazy",
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			local null_ls = require("null-ls")

			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.ruff
					-- null_ls.builtins.formatting.stylua,
					-- null_ls.builtins.formatting.black,
					-- null_ls.builtins.formatting.isort,
					-- null_ls.builtins.diagnostics.flake8.with({
					-- 	extra_args = { "--max-line-length", "120" },
					-- }),
				},
			})
		end,
	},
}
