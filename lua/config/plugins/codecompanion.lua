return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
		{ "MeanderingProgrammer/render-markdown.nvim", ft = { "markdown", "codecompanion" } },
	},
	config = function()
		require("codecompanion").setup({

			display = {
				diff = {
					provider = "mini_diff",
				},
			},
			strategies = {
				chat = {
					adapter = "openai",
				},
				inline = {
					adapter = "copilot",
				},
			},
			adapters = {
				openai = function()
					return require("codecompanion.adapters").extend("openai", {
						env = {
							api_key = "[api-key]",
						},
					})
				end,
			},
		})

		vim.cmd([[cab cc CodeCompanion]])
		vim.keymap.set(
			"n",
			"<leader>ac",
			"<cmd>CodeCompanionChat Toggle<cr>",
			{ noremap = true, silent = true, desc = "Toggle code companion chat" }
		)

		vim.keymap.set(
			"n",
			"<leader>al",
			"<cmd>CodeCompanion<cr>",
			{ noremap = true, silent = true, desc = "Code companion inline sugestion" }
		)

		vim.keymap.set(
			"v",
			"<leader>al",
			"<cmd>CodeCompanion<cr>",
			{ noremap = true, silent = true, desc = "Code companion inline sugestion using selection" }
		)

		vim.keymap.set(
			"v",
			"<leader>ad",
			"<cmd>CodeCompanionChat Add<cr>",
			{ noremap = true, silent = true, desc = "Add selection to chat buffer" }
		)

		vim.keymap.set(
			"n",
			"<leader>aa",
			"<cmd>CodeCompanionActions<cr>",
			{ noremap = true, silent = true, desc = "Code companion actions" }
		)
	end,
}
