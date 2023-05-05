vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup()

-- Define the WaitForKeys function
function WaitForKeys(keys, action)
  local pressed = {}
  local function on_keypress(key)
    table.insert(pressed, key)
    if table.concat(pressed) == keys then
      action()
      pressed = {}
    end
  end
  return "<cmd>lua WaitForKeys('" .. keys .. "', " .. vim.inspect(action) .. ")<cr>"
end

-- Define the mapping to toggle the tree
vim.api.nvim_set_keymap('n', ',,', 
  [[<cmd>lua vim.cmd('NvimTreeToggle')<CR>]], 
  { noremap = true, silent = true })

-- Define the mapping to focus the tree
vim.api.nvim_set_keymap('n', ',.', 
  [[<cmd>lua vim.cmd('NvimTreeFocus')<CR>]], 
  { noremap = true, silent = true })

-- Find file in toggle
vim.api.nvim_set_keymap('n', ',f', 
  [[<cmd>lua vim.cmd('NvimTreeFindFile')<CR>]], 
  { noremap = true, silent = true })


