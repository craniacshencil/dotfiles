-- general
local map = vim.keymap.set
map("i", "kj", "<Esc>", { noremap = true })
map("v", "kj", "<Esc>", { noremap = true })
vim.g.mapleader = " "
vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.opt.encoding = "UTF-8"

-- numbers and relativenumbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.o.cursorline = true
local function set_linenr_colors()
	vim.api.nvim_set_hl(0, "LineNr", { fg = "#999999" })
	vim.api.nvim_set_hl(0, "CursorLineNr", { bold = true })
end

-- apply once on startup
set_linenr_colors()

-- re-apply whenever a colorscheme is loaded
vim.api.nvim_create_autocmd("ColorScheme", {
	callback = set_linenr_colors,
})

-- Indents, tabs and spaces
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- windows
vim.opt.winborder = "rounded"
vim.o.winblend = 0
vim.o.pumblend = 0

-- blessed by theprimeagen
-- move selected lines up and down(with indentation)
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- 'J' but cursor stays at start of the line
map("n", "J", "mzJ`z")

-- stay in the middle of the page when scrolling, search and find
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzz")
map("n", "n", "nzzz")

-- register-copying black-magic-sorcery-cluster-fuckery
map("x", "<leader>gp", '"_dP', { noremap = true })

-- Autocomplete brackets and quotes
-- simple pair insertions
map("i", '"', '""<Left>', { noremap = true })
map("i", "'", "''<Left>", { noremap = true })
map("i", "`", "``<Left>", { noremap = true })
map("i", "(", "()<Left>", { noremap = true })
map("i", "[", "[]<Left>", { noremap = true })
map("i", "{", "{}<Left>", { noremap = true })

-- block-style braces on Enter
map("i", "{<CR>", "{<CR>}<Esc>O", { noremap = true })
map("i", "{;<CR>", "{<CR>};<Esc>O", { noremap = true })

-- copy-paste to system-clipboard(goated but can't figure it out)
map({ "n", "v" }, "<leader>y", '"+y')
map({ "n", "v" }, "<leader>Y", '"+yg_')

map({ "n", "v" }, "<leader>d", '"+d')
map({ "n", "v" }, "<leader>D", '"+dg_')

map({ "n", "v" }, "<leader>p", '"+p')
map({ "n", "v" }, "<leader>P", '"+P')
-- prime's blessings complete there
