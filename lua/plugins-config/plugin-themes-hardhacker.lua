return {
  {
    'hardhackerlabs/theme-vim',
	lazy = true,
    config = function()
      vim.cmd.colorscheme 'hardhacker'
    end,
  }
}
