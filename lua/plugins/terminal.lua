return {
	"akinsho/toggleterm.nvim",
	version = "*",
	keys = {
		{ "<leader>ft", "<cmd>ToggleTerm direction=float<cr>", desc = "Float terminal" },
	},
	opts = {
		direction = "float",
		float_opts = {
			border = "curved",
		},
	},
}
