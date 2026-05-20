return {
	"saecki/crates.nvim",
	event = "BufRead Cargo.toml",
	config = function()
		require("crates").setup()
	end,
	keys = {
		{
			"<leader>cu",
			function()
				require("crates").upgrade_crate()
			end,
			desc = "Upgrade crate",
		},
		{
			"<leader>cU",
			function()
				require("crates").upgrade_all_crates()
			end,
			desc = "Upgrade all crates",
		},
		{
			"<leader>cv",
			function()
				require("crates").show_versions_popup()
			end,
			desc = "Show versions",
		},
	},
}
