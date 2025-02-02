return {
	{
		event = "VeryLazy",
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			local null_ls = require("null-ls")

			local function get_conda_env()
				return vim.env.CONDA_PREFIX or "/default/conda/path"
			end

			-- local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.formatting.black.with({
						extra_args = { "--virtual-env",  get_conda_env()},
					}),
					null_ls.builtins.formatting.isort.with({
						extra_args = { "--virtual-env", get_conda_env() },
					}),    -- 导入排序
					null_ls.builtins.diagnostics.flake8.with({
						extra_args = { "--max-line-length", "120" },
					}),
				},
			})
		end,
	},
}
