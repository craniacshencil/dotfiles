return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			vim.lsp.config("*", {
				capabilities = capabilities,
			})
			vim.diagnostic.config({
				virtual_text = true,
			})
			vim.lsp.config("pylsp", {
				capabilities = capabilities,
				settings = {
					pylsp = {
						plugins = {
							pycodestyle = {
								ignore = { "E501" },
								maxLineLength = 88,
							},
						},
					},
				},
			})
			vim.lsp.enable("lua_ls")
			vim.lsp.enable("bashls")
			vim.lsp.enable("pylsp")
			vim.lsp.enable("ts_ls")
			vim.lsp.enable("gopls")
		end,
	},
}
