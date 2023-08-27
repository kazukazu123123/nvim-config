local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

return {
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('barbar').setup({
        tabpages = true,
      })
    end,
    init = function()
      vim.g.barbar_auto_setup = false
      map('n', '<A-t>', '<Cmd>enew<CR>', opts)               -- New Tab
      map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)     -- Previous Tab
      map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)         -- Next Tab
      map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts) -- Swap Previous Tab
      map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)     -- Swap Next Tab
      map('n', '<A-w>', '<Cmd>bd<CR>', opts)                 -- Close Tab
      map('n', '<A-q>', '<Cmd>bd!<CR>', opts)                -- Kill Tab
    end,
    opts = {
      animation = true,
    }
  },
}
