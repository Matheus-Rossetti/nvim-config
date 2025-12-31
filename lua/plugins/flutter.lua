return {
    'akinsho/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      -- 'dressing.nvim' é opcional, mas melhora a aparência dos prompts (vim.ui.select/input)
      'stevearc/dressing.nvim',
    },
    config = function()
      require('flutter-tools').setup({})
    end,
}
