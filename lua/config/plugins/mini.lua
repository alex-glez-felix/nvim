return {
	"echasnovski/mini.nvim",
	config = function()
		local icons = require("mini.icons") -- icons for status line
		icons.setup({})

		local statusline = require("mini.statusline")
		statusline.setup({})

		require("mini.surround").setup({})
		require("mini.diff").setup({})
		require("mini.pick").setup({})
	end,
}
