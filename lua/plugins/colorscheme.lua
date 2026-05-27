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
		vim.cmd("colorscheme andromeda")
	end,
}
