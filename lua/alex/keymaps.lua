vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- diagnostic
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
vim.keymap.set("n", "[d", function()
    vim.diagnostic.jump({ count = -1, float = true })
end, { desc = "Previous diagnostic" })
vim.keymap.set("n", "]d", function()
    vim.diagnostic.jump({ count = 1, float = true })
end, { desc = "Next diagnostic" })

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- primeagen
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<leader>y", '"+dpy')
vim.keymap.set("v", "<leader>y", '"+dpy')
vim.keymap.set("n", "<leader>Y", '"+dpY')

-- Tab navigationo
vim.keymap.set("n", "<leader>tt", "<cmd>tabnew<CR>", { desc = "New tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabnext<CR>", { desc = "Next tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabprevious<CR>", { desc = "Previous tab" })

vim.keymap.set("n", "<leader>Tv", function()
    local current_config = vim.diagnostic.config().virtual_lines
    local new_config

    if current_config == true then
        new_config = { current_line = true }
    else
        new_config = true
    end

    vim.diagnostic.config({ virtual_lines = new_config })
end, { desc = "Toggle diagnostic virtual_lines" })
