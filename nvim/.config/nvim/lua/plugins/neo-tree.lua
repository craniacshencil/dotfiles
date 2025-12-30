return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		-- noh<CR> only because there is a 'n' in the map
		vim.keymap.set("n", "<Leader>tn", ":Neotree filesystem reveal right<CR> :noh<CR>", { noremap = true })
		vim.keymap.set("n", "<Leader>tq", ":Neotree filesystem close<CR>", { noremap = true })
	end,
}
