-- map escape to kj, map leader
vim.api.nvim_set_keymap("i", "kj", "<Esc>", { noremap = true })
vim.api.nvim_set_keymap("v", "kj", "<Esc>", { noremap = true })
vim.g.mapleader = " "

-- Indents, tabs and spaces
vim.cmd("set expandtab")
vim.cmd("set shiftwidth=4")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")

-- Line numbers and relative line numbers
vim.cmd("set relativenumber")
vim.cmd("set number")

-- for devicons
vim.cmd("set encoding=UTF-8")

-- blessed by theprimeagen
-- move selected lines up and down(with indentation)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- 'J' but cursor stays at start of the line
vim.keymap.set("n", "J", "mzJ`z")

-- stay in the middle of the page when scrolling, search and find
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzz")
vim.keymap.set("n", "n", "nzzz")

-- register-copying black-magic-sorcery-cluster-fuckery
vim.keymap.set("x", "<leader>sp", '"_dP')

-- Autocomplete brackets and quotes
vim.cmd('inoremap " ""<left>')
vim.cmd("inoremap ' ''<left>")
vim.cmd("inoremap ` ``<left>")
vim.cmd("inoremap ( ()<left>")
vim.cmd("inoremap [ []<left>")
vim.cmd("inoremap { {}<left>")
vim.cmd("inoremap {<CR> {<CR>}<ESC>O")
vim.cmd("inoremap {;<CR> {<CR>};<ESC>O")

-- copy-paste to system-clipboard(goated but can't figure it out)
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y')
vim.keymap.set({ "n", "v" }, "<leader>Y", '"+yg_')

vim.keymap.set({ "n", "v" }, "<leader>d", '"+d')
vim.keymap.set({ "n", "v" }, "<leader>D", '"+dg_')

vim.keymap.set({ "n", "v" }, "<leader>p", '"+p')
vim.keymap.set({ "n", "v" }, "<leader>P", '"+P')
-- prime's blessings complete there
