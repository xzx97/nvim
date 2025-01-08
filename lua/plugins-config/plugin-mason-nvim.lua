return {
	{
		"williamboman/mason.nvim",
		version = "*",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig"
		},
		config = function()
			require("mason").setup {
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			}
			require("mason-lspconfig").setup {
				ensure_installed = {
					"pyright",
					"lua_ls",
					"clangd",
				}
			}
		end
	}
}
