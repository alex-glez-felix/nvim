-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = "a"
vim.opt.showmode = false

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.clipboard = "unnamedplus"

vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand("~/.nvim_undodir/")

vim.o.tabstop = 4
vim.o.shiftwidth = 4

vim.opt.signcolumn = "yes"

vim.opt.updatetime = 1000
vim.opt.timeoutlen = 1000

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

vim.opt.inccommand = "split"
vim.opt.cursorline = true
vim.opt.scrolloff = 10

vim.opt.hlsearch = true

vim.opt.wrap = false
vim.wo.wrap = false

vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99

vim.o.winborder = "rounded"
