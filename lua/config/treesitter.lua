local languages = { "markdown", "rust", "go", "python", "lua", "stage_idl" }

vim.filetype.add({
	extension = { idl = "stage_idl" },
})

for _, lang in ipairs(languages) do
	vim.treesitter.language.add(lang)
end

vim.api.nvim_create_autocmd("FileType", {
	pattern = languages,
	callback = function()
		vim.treesitter.start()
	end,
})
