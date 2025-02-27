-- <leader> key
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

-- Local variable
local map = vim.keymap.set
local opt = { noremap = true, silent = true }

-- Scroll Up and Down
map("n", "<C-u>", "9k", opt)
map("n", "<C-d>", "9j", opt)

-- Indent
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)

-- Windows Size Control
map("n", "s>", ":vertical resize +20<CR>", opt)
map("n", "s<", ":vertical resize -20<CR>", opt)
map("n", "s=", "<C-w>=", opt)
map("n", "sj", ":resize +10<CR>", opt)
map("n", "sk", ":resize -10<CR>", opt)

-- -- lsp keymap
-- map("n", "<leader>e", vim.diagnostic.open_float)
-- map("n", "[d", vim.diagnostic.goto_prev)
-- map("n", "]d", vim.diagnostic.goto_next)
-- map("n", "<leader>q", vim.diagnostic.setloclist)
-- 
-- -- Use LspAttach autocommand to only map the following keys
-- -- after the language server attaches to the current buffer
-- vim.api.nvim_create_autocmd("LspAttach", {
-- 	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
-- 	callback = function(ev)
-- 		-- Enable completion triggered by <c-x><c-o>
-- 		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"
-- 
-- 		-- Buffer
-- 		-- See `:help vim.lsp.*` for documentation on any of the below functions
-- 		local opts = { buffer = ev.buf }
-- 		map("n", "gD", vim.lsp.buf.declaration, opts)
-- 		map("n", "gd", vim.lsp.buf.definition, opts)
-- 		map("n", "K", vim.lsp.buf.hover, opts)
-- 		map("n", "gi", vim.lsp.buf.implementation, opts)
-- 		map("n", "<C-k>", vim.lsp.buf.signature_help, opts)
-- 		map("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts)
-- 		map("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts)
-- 		map("n", "<leader>wl", function()
-- 			print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
-- 		end, opts)
-- 		map("n", "<leader>D", vim.lsp.buf.type_definition, opts)
-- 		map("n", "<leader>rn", vim.lsp.buf.rename, opts)
-- 		map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
-- 		map("n", "gr", vim.lsp.buf.references, opts)
-- 		map("n", "<leader>f", function()
-- 			vim.lsp.buf.format({ async = true })
-- 		end, opts)
-- 	end,
-- })
