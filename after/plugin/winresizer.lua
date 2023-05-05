
-- Set up key mappings for resizing windows with Alt + arrow keys
vim.api.nvim_set_keymap('n', '<A-S-k>', ':resize -2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-S-l>', ':resize +2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-S-j>', ':vertical resize +2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-S-;>', ':vertical resize -2<CR>', { noremap = true, silent = true })

