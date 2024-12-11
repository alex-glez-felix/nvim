return {
	"folke/todo-comments.nvim",
	event = "VimEnter",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		signs = false,
		keywords = {
			TODO = { icon = " ", color = "info", alt = { "ToDo", "todo", "Todo" } },
		},
	},
}
