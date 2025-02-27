return {
	{
		"hrsh7th/nvim-cmp",       -- 🌟 核心补全引擎
		event = "VeryLazy",    -- 仅在插入模式下加载，提高启动速度
		dependencies = {
			"hrsh7th/cmp-nvim-lsp", -- LSP 补全
			"hrsh7th/cmp-buffer", -- 缓冲区补全
			"hrsh7th/cmp-path",   -- 路径补全
			"hrsh7th/cmp-cmdline", -- 命令行补全
			"L3MON4D3/LuaSnip",   -- 代码片段引擎
			"saadparwaiz1/cmp_luasnip", -- LuaSnip 补全
			"onsails/lspkind.nvim", -- 显示补全项的图标
		},

		config = function()
			vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }

			-- local lspkind = require("lspkind")
			local cmp = require("cmp")
			local luasnip = require('luasnip')
			local lspkind = require("lspkind")
			local cmp_autopairs = require("nvim-autopairs.completion.cmp")
			cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

			cmp.setup({
				snippet = {
					expand = function(args)
						luasnip.lsp_expand(args.body)
					end
				},

				sources = cmp.config.sources {
					{ neme = "path" },
					{ name = "nvim_lsp", keyword_length = 1 },
					{ name = "buffer",   keyword_length = 3 },
					{ name = "luasnip",  keyword_length = 2 },
				},
				formatting = {
					fields = { "kind", "abbr", "menu" }, -- 指定补全项的字段顺序
					format = function(entry, vim_item)
						local icons = {
							Text = "",
							Method = "",
							Function = "󰡱",
							Constructor = "",
							Field = "",
							Variable = "",
							Class = "",
							Interface = "",
							Module = "",
							Property = "",
							Unit = "",
							Value = "",
							Enum = "",
							Keyword = "",
							Snippet = "",
							Color = "",
							File = "",
							Reference = "",
							Folder = "",
							EnumMember = "",
							Constant = "",
							Struct = "",
							Event = "",
							Operator = "",
							TypeParameter = "",
						}
						vim_item.kind = lspkind.presets.default[vim_item.kind] .. " " .. vim_item.kind
						-- vim_item.kin=d = string.format("%s %s", icons[vim_item.kind] or "", vim_item.kind)

						-- 在 menu 显示来源
						vim_item.menu = ({
							nvim_lsp = "[LSP]",
							luasnip = "[Snippet]",
							buffer = "[Buffer]",
							path = "[Path]",
						})[entry.source.name]

						return vim_item
					end,
					expandable_indicator = true, -- 开启展开指示符（用于 Snippet 提示）
				},


				mapping = {
					-- 上一个
					['<C-k>'] = cmp.mapping.select_prev_item(),
					-- 下一个
					['<C-j>'] = cmp.mapping.select_next_item(),
					-- 出现补全
					['<C-.>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
					-- 取消
					['<C-,>'] = cmp.mapping({
						i = cmp.mapping.abort(),
						c = cmp.mapping.close(),
					}),
					-- 确认
					-- Accept currently selected item. If none selected, `select` first item.
					-- Set `select` to `false` to only confirm explicitly selected items.
					['<CR>'] = cmp.mapping.confirm({
						select = true,
						behavior = cmp.ConfirmBehavior.Replace
					}),
					-- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
					['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
					['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
				},

				-- Set configuration for specific filetype.
				cmp.setup.filetype("gitcommit", {
					sources = cmp.config.sources({
						{ name = "cmp_git" }, -- You can specify the `cmp_git` source if you were installed it.
					}, {
						{ name = "buffer" },
					}),
				}),

				-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
				cmp.setup.cmdline({ "/", "?" }, {
					mapping = cmp.mapping.preset.cmdline(),
					sources = {
						{ name = "buffer" },
					},
				}),

				-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
				cmp.setup.cmdline(":", {
					mapping = cmp.mapping.preset.cmdline(),
					sources = cmp.config.sources({
						{ name = "path" },
					}, {
						{ name = "cmdline" },
					}),
				})
			})
		end
	}
}
