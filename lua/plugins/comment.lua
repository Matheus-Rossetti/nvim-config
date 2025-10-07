-- lua/plugins/comment.lua

return {
  'numToStr/Comment.nvim',
  event = 'VeryLazy',
  opts = {
    -- add any options here
  },
  config = function(_, opts)
    require('Comment').setup(opts)

    -- Create a keymap for the comma key in normal and visual mode
    -- This mapping will be automatically loaded by lazy.nvim
    vim.keymap.set('n', ',', function()
      require('Comment.api').toggle.linewise.current()
    end, { desc = 'Comment toggle current line' })

    vim.keymap.set('v', ',', function()
      -- The '<ESC>' is a workaround to exit visual mode and then apply the comment
      -- which makes the toggle behave more predictably
      vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<ESC>', true, false, true), 'nx', false)
      require('Comment.api').toggle.linewise(vim.fn.visualmode())
    end, { desc = 'Comment toggle visual lines' })
  end,
}
