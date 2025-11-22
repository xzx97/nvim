---@module "lazy"
---@type LazySpec
return {
  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets' },
  version = '1.*',
  event = { 'InsertEnter', 'CmdlineEnter' },

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    appearance = {
      use_nvim_cmp_as_default = false,
      nerd_font_variant = 'normal',
    },
    cmdline = {
      keymap = { preset = 'inherit' },
      completion = { menu = { auto_show = true } },
    },
    completion = {
      accept = { auto_brackets = { enabled = true } },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 250,
        treesitter_highlighting = true,
        update_delay_ms = 50,
        window = { border = 'rounded' },
      },
      list = {
        selection = {
          preselect = true,
          auto_insert = false,
        },
      },
      menu = {
        border = 'rounded',
        draw = {
          columns = {
            { 'label', 'label_description', gap = 1 },
            { 'kind_icon', 'kind' },
          },
          treesitter = { 'lsp' },
        },
      },
      trigger = { show_in_snippet = false },
    },

    keymap = {
      preset = 'none',
		['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
		['<C-e>'] = { 'hide', 'fallback' },
		['<CR>'] = { 'accept', 'fallback' },

		['<Up>'] = { 'snippet_forward', 'fallback' },
		['<Down>'] = { 'snippet_backward', 'fallback' },

		['<S-Tab>'] = { 'select_prev', 'fallback' },
		['<Tab>'] = { 'select_next', 'fallback' },
		['<C-p>'] = { 'select_prev', 'fallback_to_mappings' },
		['<C-n>'] = { 'select_next', 'fallback_to_mappings' },

		['<C-k>'] = { 'scroll_documentation_up', 'fallback' },
		['<C-j>'] = { 'scroll_documentation_down', 'fallback' },

		['<S-k>'] = { 'show_signature', 'hide_signature', 'fallback' },
    },

    signature = {
      enabled = true,
      window = { border = 'rounded', show_documentation = false },
    },

    sources = {
      default = { 'lazydev', 'lsp', 'path', 'snippets', 'buffer' },
      providers = {
        lazydev = {
          name = 'LazyDev',
          module = 'lazydev.integrations.blink',
          -- Make lazydev completions top priority (see `:h blink.cmp`)
          score_offset = 1000,
        },
        lsp = {
          min_keyword_length = 2,
          score_offset = 0,
        },
        path = {
          min_keyword_length = 0,
        },
        snippets = {
          min_keyword_length = 2,
        },
        buffer = {
          min_keyword_length = 4,
          max_items = 5,
        },
      },
    },
  },
}
