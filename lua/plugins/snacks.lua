return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@module 'snacks'
	---@type snacks.Config
	opts = {
		scroll = { enabled = false },
		scratch = { enabled = false },
		indent = { enabled = false },
		bigfile = { enabled = true },
		dashboard = { enabled = true },
		explorer = { enabled = true },
		input = { enabled = true },
		notifier = {
			enabled = true,
			timeout = 3000,
		},
		picker = { enabled = true },
		quickfile = { enabled = true },
		scope = { enabled = true },
		statuscolumn = { enabled = true },
		words = { enabled = true },
	},
	keys = {
		{
			"<leader>e",
			function()
				Snacks.explorer()
			end,
			desc = "File explorer",
		},

		-- Search
		{
			"<leader>sf",
			function()
				Snacks.picker.smart()
			end,
			desc = "Search files",
		},
		{
			"<leader>sg",
			function()
				Snacks.picker.grep()
			end,
			desc = "Search grep",
		},
		{
			"<leader>sb",
			function()
				Snacks.picker.buffers()
			end,
			desc = "Search buffers",
		},
		{
			"<leader>sG",
			function()
				Snacks.picker.git_files()
			end,
			desc = "Search git files",
		},
		{
			"<leader>sp",
			function()
				Snacks.picker.projects()
			end,
			desc = "Search projects",
		},
		{
			"<leader>sr",
			function()
				Snacks.picker.recent()
			end,
			desc = "Search recent",
		},
		{
			"<leader>si",
			function()
				Snacks.picker.icons()
			end,
			desc = "Search icons",
		},
		{
			"<leader>sh",
			function()
				Snacks.picker.help()
			end,
			desc = "Search help",
		},
		{
			"<leader>sq",
			function()
				Snacks.picker.qflist()
			end,
			desc = "Quickfix List",
		},

		-- Lazy git
		{
			"<leader>gg",
			function()
				Snacks.lazygit()
			end,
			desc = "Lazygit",
		},

		-- Zen
		{
			"<leader>Tz",
			function()
				Snacks.zen()
			end,
			desc = "Toggle Zen Mode",
		},
		{
			"<leader>TZ",
			function()
				Snacks.zen.zoom()
			end,
			desc = "Toggle Zoom",
		},

		-- LSP NAVIGATION
		{
			"gr",
			function()
				Snacks.picker.lsp_references()
			end,
			nowait = true,
			desc = "References",
		},
		{
			"gi",
			function()
				Snacks.picker.lsp_implementations()
			end,
			nowait = true,
			desc = "Implementation",
		},
		{
			"gd",
			function()
				Snacks.picker.lsp_definitions()
			end,
			nowait = true,
			desc = "Definitions",
		},
		{
			"gD",
			function()
				Snacks.picker.lsp_declarations()
			end,
			nowait = true,
			desc = "Declarations",
		},

		-- Nice to haves
		{
			"<leader>uC",
			function()
				Snacks.picker.colorschemes()
			end,
			desc = "Colorschemes",
		},
	},
}
