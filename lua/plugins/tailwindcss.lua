-- tailwind-tools.lua
return {
    ft = { "html", "javascript", "javascriptreact", "typescriptreact", "svelte", "vue" },
    "luckasRanarison/tailwind-tools.nvim",
    name = "tailwind-tools",
    build = ":UpdateRemotePlugins",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "neovim/nvim-lspconfig", -- optional
    },
    opts = {}, -- your configuration
}
