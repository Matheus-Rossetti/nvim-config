return {
    "nvimtools/none-ls.nvim",

    dependencies = {
        "nvimtools/none-ls-extras.nvim",
    },
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                -- Lua
                null_ls.builtins.formatting.stylua,

                -- Python
                null_ls.builtins.formatting.black,
                null_ls.builtins.diagnostics.ruff,

                -- Golang
                null_ls.builtins.formatting.gofumpt,
                null_ls.builtins.diagnostics.golangci_lint,

                -- General
                null_ls.builtins.completion.spell,
                require("none-ls.diagnostics.eslint"),
            },
        })
        vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
    end,
}
