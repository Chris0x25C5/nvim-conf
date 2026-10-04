vim.pack.add { 'https://github.com/akinsho/toggleterm.nvim' }
require('toggleterm').setup {
  direction = 'horizontal',
  size = 15,
}

vim.keymap.set('n', '<C-;>', '<cmd>ToggleTerm<CR>', { desc = 'Toggle terminal' })
vim.keymap.set('t', '<C-;>', [[<C-\><C-n><cmd>ToggleTerm<CR>]], { desc = 'Toggle terminal' })
