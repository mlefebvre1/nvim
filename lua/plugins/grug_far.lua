return {
	"MagicDuck/grug-far.nvim",
	opts = {},
	keys = {
		{
			"<leader>sr",
			function()
				require("grug-far").open({ transient = true })
			end,
			desc = "Search and Replace",
		},
		{
			"<leader>sr",
			function()
				require("grug-far").with_visual_selection({ transient = true })
			end,
			mode = "v",
			desc = "Search and Replace (selection)",
		},
	},
}
