return {
    "NeogitOrg/neogit",
    dependencies = {
        "nvim-lua/plenary.nvim", -- required
        "sindrets/diffview.nvim", -- optional - Diff integration
        "folke/snacks.nvim", -- optional
    },
    keys = {
        { "<leader>gn", desc = "[g]it [n]eo" },
        { "<leader>gc", desc = "[g]it [c]commit" },
        { "<leader>gP", desc = "[g]it [P]ush" },
        { "<leader>gp", desc = "[g]it [p]ull" },
        { "<leader>gs", desc = "[g]it [s]tash" },
    },
    config = function()
        local neogit = require("neogit")

        neogit.setup({})

        vim.keymap.set("n", "<leader>gn", function()
            neogit.open()
        end, { desc = "[g]it [n]eo" })
        vim.keymap.set("n", "<leader>gc", function()
            neogit.open({ "commit" })
        end, { desc = "[g]it [c]commit" })
        vim.keymap.set("n", "<leader>gP", function()
            neogit.open({ "push" })
        end, { desc = "[g]it [P]ush" })
        vim.keymap.set("n", "<leader>gp", function()
            neogit.open({ "pull" })
        end, { desc = "[g]it [p]ull" })
        vim.keymap.set("n", "<leader>gs", function()
            neogit.open({ "stash" })
        end, { desc = "[g]it [s]stash" })
    end,
}
