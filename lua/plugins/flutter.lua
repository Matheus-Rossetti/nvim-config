return {
    "nvim-flutter/flutter-tools.nvim",
    lazy = false,
    dependencies = {
        "nvim-lua/plenary.nvim",
        "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    config = true,
}

    -- config = function()
    --     require("flutter-tools").setup {
    --         decorations = {
    --             device = true,
    --         },
    --         flutter_path = "~/dev/tools/flutter/bin",

      --       lsp = {
      --           color = {
      --               enabled = true,
      --               background = true,
      --               background_color = nil,
      --               virtual_text = true,
      --               settings = {
      --                   enableSnippets = true,
      --                   updateImportsOnRename = true,
      --               }
      --           }
      --       },
      --   }
    -- end
