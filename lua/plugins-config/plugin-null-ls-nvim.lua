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
				-- 	on_attach = function(client, bufnr)
				-- 		if client.supports_method("textDocument/formatting") then
				-- 			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
				-- 			vim.api.nvim_create_autocmd("BufWritePre", {
				-- 				group = augroup,
				-- 				buffer = bufnr,
				-- 				callback = function()
				-- 					-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
				-- 					vim.lsp.buf.format({ bufnr = bufnr })
				-- 				end,
				-- 			})
				-- 		end
				-- 	end,
			})
		end,
	},
}
