vim.lsp.config("gopls", {
	cmd = { "gopls" },
	filetypes = { "go", "gomod" },
	root_markers = { "go.mod", "go.work" },
})
vim.lsp.enable("gopls")
