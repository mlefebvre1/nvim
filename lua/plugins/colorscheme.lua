-- return {
-- 	"catppuccin/nvim",
-- 	name = "catppuccin",
-- 	priority = 1000,
-- 	config = function()
-- 		vim.cmd.colorscheme("catppuccin-mocha")
-- 	end,
-- }
--
return {
	"idr4n/andromeda.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("andromeda").setup({
			on_highlights = function(hl, colors)
				hl.NeoTreeGitIgnored = { fg = "#6b7080" }
				hl.NeoTreeDimText = { fg = "#6b7080" }
				hl.Comment = { fg = "#7a8394", italic = true }
				hl.SnacksPickerGitStatusUntracked = { fg = "#6b7080" }
			end,
		})
		vim.cmd("colorscheme andromeda")
	end,
}
