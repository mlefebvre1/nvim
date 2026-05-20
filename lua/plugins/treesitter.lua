return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup({
			ensure_installed = { "lua", "go", "python", "rust", "c", "cpp" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
