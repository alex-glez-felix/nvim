return {
    "augmentcode/augment.vim",
    cmd = {
        "Augment",
        "AugmentEnable",
        "AugmentDisable",
        "AugmentChat",
        "AugmentChatNew",
        "AugmentChatToggle",
        "AugmentSignin",
        "AugmentSignout",
        "AugmentStatus",
        "AugmentLog",
    },
    keys = {
        { "<leader>Ac", desc = "Augment Chat" },
        { "<leader>At", desc = "Augment Chat Toggle" },
    },
    config = function()
        vim.g.augment_disable_tab_mapping = true
        vim.g.augment_disable_completions = true
        vim.g.augment_workspace_folders = { "~/Code" }

        local keymap = vim.keymap
        keymap.set("n", "<leader>Ac", "<cmd>Augment chat<cr>", { desc = "Augment Chat" })
        keymap.set("n", "<leader>At", "<cmd>Augment chat-toggle<cr>", { desc = "Augment Chat Toggle" })
    end,
}
