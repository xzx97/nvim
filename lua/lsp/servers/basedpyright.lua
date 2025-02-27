local lspconfig = require('lspconfig')

lspconfig.basedpyright.setup {
	settings = {
		python = {
			pythonPath = "/bin/python" or "/usr/bin/python",
		},
	},
}
