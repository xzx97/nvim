local lspconfig = require('lspconfig')

lspconfig.ruff.setup({
	init_options = {
		settings = {
			logLevel = 'debug',
		}
	}
})
