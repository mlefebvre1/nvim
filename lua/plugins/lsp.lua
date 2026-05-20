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
					"eslint",
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
	{
		"ray-x/go.nvim",
		dependencies = {
			"ray-x/guihua.lua",
			"neovim/nvim-lspconfig",
		},
		ft = { "go", "gomod" },
		build = ':lua require("go.install").update_all_sync()',
		opts = {},
		config = function()
			require("go").setup({
				lsp_cfg = {
					settings = {
						gopls = {
							semanticTokens = true,
						},
					},
				},
				lsp_diag_hdlr = true,
				linter = "golangci-lint", -- use golangci-lint instead of revive (default)
				linter_flags = { "--fast" }, -- optional flags
				lsp_inlay_hints = {
					enable = true,
				},
			})
			-- auto goimports on save
			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = "*.go",
				callback = function()
					require("go.format").goimports()
				end,
			})
		end,
	},
	{
		"pmizio/typescript-tools.nvim",
		dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
		opts = {
			settings = {
				tsserver_semantic_tokens = true,
				expose_as_code_action = "all",
				tsserver_file_preferences = {
					includeInlayParameterNameHints = "all",
					includeInlayReturnTypeHints = true,
					includeInlayVariableTypeHints = true,
				},
			},
		},
	},
}
