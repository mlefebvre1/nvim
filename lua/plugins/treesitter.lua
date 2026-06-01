return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup({
			ensure_installed = {
				"go",
				"gomod",
				"gowork",
				"gosum",
				"json5",
			},
			sync_install = false,
			auto_install = false,
			highlight = {
				enable = true,
			},
		})
	end,
}
