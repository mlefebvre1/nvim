return {
	"ibhagwan/fzf-lua",
	config = function()
		require("fzf-lua").setup({})
	end,
	keys = {
		{ "<leader><space>", "<cmd>FzfLua files<cr>", desc = "Find files" },
		{
			"<leader>sw",
			function()
				require("fzf-lua").grep_cword()
			end,
			mode = { "n", "v" },
			desc = "Search word under cursor",
		},
		{ "<leader>sg", "<cmd>FzfLua live_grep<cr>", desc = "Live grep" },
		{ "<leader>sb", "<cmd>FzfLua buffers<cr>", desc = "Buffers" },
		{ "<leader>sh", "<cmd>FzfLua help_tags<cr>", desc = "Help tags" },
		{ "gd", "<cmd>FzfLua lsp_definitions jump1=true ignore_current_line=true<cr>", desc = "Goto Definition" },
		{ "gr", "<cmd>FzfLua lsp_references jump1=true ignore_current_line=true<cr>", desc = "References" },
		{
			"gI",
			"<cmd>FzfLua lsp_implementations jump1=true ignore_current_line=true<cr>",
			desc = "Goto Implementation",
		},
	},
}
