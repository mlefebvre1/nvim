return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	event = "VimEnter",
	keys = {
		{ "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Toggle file tree" },
	},
	opts = {
		filesystem = {
			filtered_items = {
				hide_dotfiles = false,
				hide_gitignored = true,
			},
		},
	},
	config = function(_, opts)
		require("neo-tree").setup(opts)
		vim.cmd("Neotree show")
	end,
}
