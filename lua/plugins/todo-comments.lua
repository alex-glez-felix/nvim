return {
    "folke/todo-comments.nvim",
    config = function()
        require("todo-comments").setup({
            signs = false,
            keywords = {
                TODO = { icon = " ", color = "info", alt = { "ToDo", "todo", "Todo" } },
                FIXME = { icon = " ", color = "warning", alt = { "FIXME", "FIX", "FIXME", "Fix", "Fixme" } },
            },
        })
        vim.keymap.set("n", "<leader>st", function()
            Snacks.picker.todo_comments({ keywords = { "TODO", "FIX", "FIXME" } })
        end, { desc = "Find todo comments" })
        vim.keymap.set("n", "<leader>sT", function()
            Snacks.picker.todo_comments({ keywords = { "TODO", "FIX", "FIXME", "WARN", "HACK", "NOTE" } })
        end, { desc = "Find all todo comments" })
    end,
}
