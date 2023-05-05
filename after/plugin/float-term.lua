-- vim-floaterm configuration
vim.g.floaterm_autoclose = 1
vim.g.floaterm_width = 0.8
vim.g.floaterm_height = 0.8
vim.g.floaterm_position = 'center'
vim.g.floaterm_shell_height = 0.9
vim.g.floaterm_shell = '/bin/bash'
-- Map keys to toggle the terminal
vim.api.nvim_set_keymap('n', '<leader>t', ':FloatermToggle<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>nt', ':FloatermNew!<CR>', { noremap = true })
vim.api.nvim_set_keymap('t', '<leader>t', '<C-\\><C-n>:FloatermToggle<CR>', { noremap = true })

-- Map keys to navigate between terminals
vim.api.nvim_set_keymap('t', '<leader>f', '<C-\\><C-n>:FloatermKill<CR>', { noremap = true })
vim.api.nvim_set_keymap('t', '<leader>;', '<C-\\><C-n>:FloatermNext<CR>', { noremap = true })
vim.api.nvim_set_keymap('t', '<leader>j', '<C-\\><C-n>:FloatermPrev<CR>', { noremap = true })

-- Use Neovim's built-in terminal for the floaterm plugin
vim.g.floaterm_terminal = 'nvim'


vim.cmd([[
  augroup floaterm_filetype_mappings
    autocmd!
    autocmd FileType javascript nnoremap <buffer> <leader>r :w<CR>:FloatermNew node %<CR>
    autocmd FileType python nnoremap <buffer> <leader>r :w<CR>:FloatermNew! python %<CR>
    autocmd FileType floaterm nnoremap <buffer> <CR> i<Enter><Esc>:w<CR>:FloatermSend source ~/.bashrc<CR>:FloatermSend source ~/.bash_profile<CR>a
  augroup END
]])

