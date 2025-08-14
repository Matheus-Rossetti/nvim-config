return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		local cmp = require("cmp")

		cmp.setup({
			completion = {
				autocomplete = { require("cmp.types").cmp.TriggerEvent.TextChanged }, -- sugestões automáticas enquanto digita
			},
			mapping = {
				["<Tab>"] = cmp.mapping.confirm({ select = true }), -- Enter confirma
				["<Enter>"] = cmp.mapping.confirm({ select = true }), -- Enter confirma
				["<C-j>"] = cmp.mapping.select_next_item(), -- Ctrl-j navega para baixo
				["<C-k>"] = cmp.mapping.select_prev_item(), -- Ctrl-k navega para cima
				["<C-Space>"] = cmp.mapping.complete(),
			},
			sources = {
				{ name = "nvim_lsp" },
			},
			experimental = {
				ghost_text = true,
				native_menu = false,
			},
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            }
		})
	end,
}
