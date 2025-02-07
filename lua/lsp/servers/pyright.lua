local lspconfig = require('lspconfig')

lspconfig.pyright.setup {
	settings = {
		python = {
			pythonPath = vim.env.CONDA_PREFIX and vim.env.CONDA_PREFIX .. "/bin/python" or "/usr/bin/python",
		},
	},
}
