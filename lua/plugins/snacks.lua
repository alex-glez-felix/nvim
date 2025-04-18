return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@module 'snacks'
    ---@type snacks.Config
    opts = {
        scroll = { enabled = false },
        scratch = { enabled = false },
        indent = { enabled = true, animate = { enabled = false } },
        bigfile = { enabled = true },
        dashboard = {
            enabled = true,
        },
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
    init = function()
        vim.api.nvim_create_autocmd("User", {
            pattern = "VeryLazy",
            callback = function()
                Snacks.toggle.option("relativenumber", { name = "Relative Number" }):map("<leader>TL")
                Snacks.toggle.diagnostics():map("<leader>Td")
                Snacks.toggle.line_number():map("<leader>Tn")
                Snacks.toggle
                    .option("conceallevel", { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2 })
                    :map("<leader>Tc")
                Snacks.toggle.treesitter():map("<leader>TT")
                Snacks.toggle
                    .option("background", { off = "light", on = "dark", name = "Dark Background" })
                    :map("<leader>Tl")
                Snacks.toggle.inlay_hints():map("<leader>Th")
                Snacks.toggle.indent():map("<leader>Tg")
                Snacks.toggle.dim():map("<leader>Tm")
            end,
        })
    end,

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
