-- quit
vim.keymap.set('n', '<leader>q', ':quit<cr>')
vim.keymap.set('n', '<leader>Q', ':quitall!<cr>')

-- configuration
vim.keymap.set('n', '<leader>ec', ':edit $MYVIMRC<cr>')
vim.keymap.set('n', '<leader>sc', ':source $MYVIMRC<cr>')

-- window navigation
vim.keymap.set('n', '<c-h>', '<c-w><c-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<c-j>', '<c-w><c-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<c-k>', '<c-w><c-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<c-l>', '<c-w><c-l>', { desc = 'Move focus to the right window' })
