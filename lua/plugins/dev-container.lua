return {
	{
		"nvim-dev-container/nvim-dev-container",
		event = "VeryLazy",
		config = function ()
			require("devcontainer").setup{}
		end
	}
}
