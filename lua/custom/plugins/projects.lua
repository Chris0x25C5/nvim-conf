-- Dependencies are registered before the project manager is configured.
vim.pack.add {
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/Shatur/neovim-session-manager',
  'https://github.com/coffebar/neovim-project',
}

vim.opt.sessionoptions:append 'globals'
require('neovim-project').setup {
  projects = {
    '~/dev/Projects/*',
    vim.fn.stdpath 'config',
  },
  picker = { type = 'telescope' },
}

vim.keymap.set('n', '<leader>sp', '<cmd>NeovimProjectDiscover<CR>', { desc = '[S]earch [P]rojects' })
