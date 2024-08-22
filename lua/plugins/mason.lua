return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		require("mason").setup()

		require("mason-lspconfig").setup({
			ensure_installed = {
				"css_variables",
				"cssls",
				"cssmodules_ls",
				"docker_compose_language_service",
				"dockerls",
				"emmet_language_server",
				"html",
				"intelephense",
				"jsonls",
				"lua_ls",
				"prismals",
				"tailwindcss",
				"tsserver",
				"vimls",
			},
		})

		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		local capabilities2 = vim.lsp.protocol.make_client_capabilities()
		capabilities2.textDocument.completion.completionItem.snippetSupport = true

		require("mason-lspconfig").setup_handlers({
			function(server_name)
				require("lspconfig")[server_name].setup({
					capabilities = capabilities,
				})
			end,
			["html"] = function()
				require("lspconfig")["html"].setup({
					capabilities = capabilities2,
				})
			end,
			["jsonls"] = function()
				require("lspconfig")["jsonls"].setup({
					capabilities = capabilities2,
				})
			end,
			["cssls"] = function()
				require("lspconfig")["cssls"].setup({
					capabilities = capabilities2,
				})
			end,
		})
	end,
}
