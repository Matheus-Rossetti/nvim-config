return {
    'akinsho/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      -- 'dressing.nvim' é opcional, mas melhora a aparência dos prompts (vim.ui.select/input)
      'stevearc/dressing.nvim',
    },
    config = function()
      require('flutter-tools').setup {
        -- Ativa o LSP (Language Server Protocol) para Dart, essencial para auto-completar e erros.
        lsp = {
          -- O flutter-tools configura automaticamente o dartls, mas você pode passar opções aqui
          settings = {
            showtodos = true, -- Mostrar comentários TODO
          },
        },
        -- Guias de Widget (para estruturas visuais - similar a como o AS destaca)
        widget_guides = {
          enabled = true,
        },
        -- Decorações na linha de status (importante para o 'look and feel' de IDE)
        decorations = {
          statusline = {
            app_version = true, -- Versão do App
            device = true,      -- Dispositivo Conectado (semelhante ao AS)
            -- Também pode adicionar hot_reload, hot_restart, etc.
          },
        },
      }
    end,
}
