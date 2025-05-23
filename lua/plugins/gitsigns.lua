return {
    {
        "lewis6991/gitsigns.nvim",
        opts = {
            on_attach = function(bufnr)
                local gitsigns = require("gitsigns")

                local function map(mode, l, r, opts)
                    opts = opts or {}
                    opts.buffer = bufnr
                    vim.keymap.set(mode, l, r, opts)
                end

                -- Navigation
                map("n", "]c", function()
                    if vim.wo.diff then
                        vim.cmd.normal({ "]c", bang = true })
                    else
                        gitsigns.nav_hunk("next")
                    end
                end, { desc = "next git change" })

                map("n", "[c", function()
                    if vim.wo.diff then
                        vim.cmd.normal({ "[c", bang = true })
                    else
                        gitsigns.nav_hunk("prev")
                    end
                end, { desc = "previews git change" })

                -- Actions
                -- visual mode
                map("v", "<leader>hs", function()
                    gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
                end, { desc = "stage git hunk" })
                map("v", "<leader>hr", function()
                    gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
                end, { desc = "reset git hunk" })
                -- normal mode
                map("n", "<leader>hs", gitsigns.stage_hunk, { desc = "stage git hunk" })
                map("n", "<leader>hr", gitsigns.reset_hunk, { desc = "reset git hunk" })
                map("n", "<leader>hS", gitsigns.stage_buffer, { desc = "git stage buffer" })
                map("n", "<leader>hu", gitsigns.stage_hunk, { desc = "undo stage hunk" })
                map("n", "<leader>hR", gitsigns.reset_buffer, { desc = "git Reset buffer" })
                map("n", "<leader>hp", gitsigns.preview_hunk, { desc = "git preview hunk" })
                map("n", "<leader>hb", gitsigns.blame_line, { desc = "git blame line" })
                map("n", "<leader>hd", gitsigns.diffthis, { desc = "git diff against index" })
                map("n", "<leader>hD", function()
                    gitsigns.diffthis("@")
                end, { desc = "git [D]iff against last commit" })
                -- Toggles
                map("n", "<leader>Tb", gitsigns.toggle_current_line_blame, { desc = "Toggle git show blame line" })
                map("n", "<leader>TD", gitsigns.preview_hunk_inline, { desc = "Toggle git show Deleted" })
            end,
        },
    },
}
