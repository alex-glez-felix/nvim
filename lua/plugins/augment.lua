return {

    "augmentcode/augment.vim",
    init = function()
        vim.g.augment_disable_tab_mapping = true
        vim.g.augment_disable_completions = true

        vim.g.augment_workspace_folders = { "~/Code" }

        vim.keymap.set("n", "<leader>Ac", "<cmd>Augment chat<cr>", { desc = "Augment chat" })
        vim.keymap.set("n", "<leader>At", "<cmd>Augment chat-toggle<cr>", { desc = "Augment chat toggle" })
    end,
}
