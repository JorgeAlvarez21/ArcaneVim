vim.g.mapleader = " "

-- Map h to move cursor up
vim.api.nvim_set_keymap('n', 'k', 'k', { noremap = true })
vim.api.nvim_set_keymap('v', 'k', 'k', { noremap = true })

-- Map j to move cursor left
vim.api.nvim_set_keymap('n', 'j', 'h', { noremap = true })
vim.api.nvim_set_keymap('v', 'j', 'h', { noremap = true })

-- Map k to move cursor right
vim.api.nvim_set_keymap('n', ';', 'l', { noremap = true })
vim.api.nvim_set_keymap('v', ';', 'l', { noremap = true })

-- Map l to move cursor down
vim.api.nvim_set_keymap('n', 'l', 'j', { noremap = true })
vim.api.nvim_set_keymap('v', 'l', 'j', { noremap = true })


-- Move cursor up 10 lines
vim.api.nvim_set_keymap('n', 'K', '10k', { noremap = true })

-- Move cursor down 10 lines
vim.api.nvim_set_keymap('n', 'L', '10j', { noremap = true })


vim.api.nvim_set_keymap('v', ',j', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', ',j', '<C-w>h', { noremap = true })

vim.api.nvim_set_keymap('v', ',;', '<C-w>l', { noremap = true })
vim.api.nvim_set_keymap('n', ',;', '<C-w>l', { noremap = true })

vim.api.nvim_set_keymap('v', ',k', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', ',k', '<C-w>k', { noremap = true })

vim.api.nvim_set_keymap('v', ',l', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', ',l', '<C-w>j', { noremap = true })

vim.keymap.set("n", "<leader>n", ":w<CR>")

vim.keymap.set("v", "L", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])


vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>sw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>rm", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/custom/remap.lua<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)




vim.api.nvim_set_keymap('i', '<A-j>', '<Left>', { noremap = true })
vim.api.nvim_set_keymap('i', '<A-k>', '<Up>', { noremap = true })
vim.api.nvim_set_keymap('i', '<A-l>', '<Down>', { noremap = true })
vim.api.nvim_set_keymap('i', '<A-;>', '<Right>', { noremap = true })


-- Map the '‘^' key sequence to move the cursor to the first non-blank character of the current line
vim.api.nvim_set_keymap('n', '<A-h>', "'^", { noremap = true, silent = true })

-- Map the 'gi' key sequence to enter insert mode at the last insertion point
vim.api.nvim_set_keymap('n', '<A-g>', 'gi', { noremap = true, silent = true })
