return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	config = function()
		require("conform").setup({
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
			formatters_by_ft = {
				-- Lua
				lua = { "stylua" },

				-- JS / TS
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				vue = { "prettier" },

				-- JSON
				json = { "prettier" },
				jsonc = { "prettier" },

				-- Python
				python = { "ruff" },
			},
		})
	end,
}
