return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ensure_installed = {
					-- LSP servers
					"gopls",
					"pyright",
					"rust_analyzer",
					"clangd",
					-- Formatters
					"ruff",
					"stylua",
					"clang-format",
					-- Linters
					"golangci-lint",
					"clangtidy",
				},
			})
		end,
	},
	{
		"mrcjkb/rustaceanvim",
		version = "^5",
		ft = "rust",
		init = function()
			vim.g.rustaceanvim = {
				server = {
					settings = {
						["rust-analyzer"] = {
							check = {
								command = "clippy",
							},
						},
					},
				},
			}
		end,
	},
}
