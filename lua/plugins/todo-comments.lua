-- ✅ Highlight, list and search todo comments in your projects
-- https://github.com/folke/todo-comments.nvim

return {
	"folke/todo-comments.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"folke/trouble.nvim",
	},
	opts = {},
	event = "BufReadPost",
	keys = {
		{ "<leader>tt", "<cmd>Trouble todo toggle<cr>", desc = "Project TODOs" },
	},
}
