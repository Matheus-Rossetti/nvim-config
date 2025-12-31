return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
		},
		config = function()
			-- 1. Setup do Mason (Gerenciador de pacotes)
			require("mason").setup({
                ensure_installed = {
                    -- LSPs
                    "basedpyright",
                    "clangd",
                    "gopls",
                    "json-lsp",
                    "lua_language_server",
                    "ruff",
                    "stylua",
                    "typescript-language-server",
                    "vue-language-server",

                    -- Linters
                    "eslint_d",
                    "ruff",

                    -- Formatters
                    "prettier",
                    "ruff",
                    "stylua"
                }
            })

			-- 2. Setup do Mason LSP Config + Definição dos Handlers
			require("mason-lspconfig").setup({})


			-- Configurações visuais de diagnóstico (que você já tinha)
			vim.diagnostic.config({
				virtual_text = true,
				signs = true,
				underline = true,
				update_in_insert = false,
			})

			-- Keymaps globais de LSP
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, {})
		end,
	},
}
