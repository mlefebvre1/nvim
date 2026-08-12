return {
	"saghen/blink.cmp",
	version = "*",
	opts = {
		keymap = {
			preset = "enter",
			["<M-CR>"] = { "show", "fallback" },
			["<Tab>"] = {
				"snippet_forward",
				function()
					return require("sidekick").nes_jump_or_apply()
				end,
				function()
					return vim.lsp.inline_completion.get()
				end,
				"fallback",
			},
		},
		appearance = {
			nerd_font_variant = "mono",
		},
		completion = {
			documentation = { auto_show = true },
		},
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},
	},
}
