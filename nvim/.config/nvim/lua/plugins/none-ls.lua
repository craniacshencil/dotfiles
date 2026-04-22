return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.gofumpt,
				null_ls.builtins.formatting.golines,
				null_ls.builtins.formatting.goimports,
				null_ls.builtins.formatting.prettierd,
				null_ls.builtins.formatting.shfmt,
			},
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.keymap.set("n", "<leader>f", function()
						vim.lsp.buf.format({
							bufnr = bufnr,
							async = false,
						})
					end, { buffer = bufnr, desc = "Format buffer" })
				end
			end,
		})
	end,
}
