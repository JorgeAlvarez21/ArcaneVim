require('wincent.commandt').setup({
  always_show_dot_files = false,
  height = 15,
  ignore_case = nil, -- nil means "infer from Neovim's 'ignorecase'".
  mappings = {
    i = {
      ['<C-a>'] = '<Home>',
      ['<C-c>'] = 'close',
      ['<C-e>'] = '<End>',
      ['<C-h>'] = '<Left>',
      ['<C-j>'] = 'select_next',
      ['<C-k>'] = 'select_previous',
      ['<C-l>'] = '<Right>',
      ['<C-n>'] = 'select_next',
      ['<C-p>'] = 'select_previous',
      ['<C-s>'] = 'open_split',
      ['<C-t>'] = 'open_tab',
      ['<C-v>'] = 'open_vsplit',
      ['<CR>'] = 'open',
      ['<Down>'] = 'select_next',
      ['<Up>'] = 'select_previous',
    },
    n = {
      ['<C-a>'] = '<Home>',
      ['<C-c>'] = 'close',
      ['<C-e>'] = '<End>',
      ['<C-h>'] = '<Left>',
      ['<C-j>'] = 'select_next',
      ['<C-k>'] = 'select_previous',
      ['<C-l>'] = '<Right>',
      ['<C-n>'] = 'select_next',
      ['<C-p>'] = 'select_previous',
      ['<C-s>'] = 'open_split',
      ['<C-t>'] = 'open_tab',
      ['<C-u>'] = 'clear',
      ['<C-v>'] = 'open_vsplit',
      ['<CR>'] = 'open',
      ['<Down>'] = 'select_next',
      ['<Esc>'] = 'close',
      ['<Up>'] = 'select_previous',
      ['H'] = 'select_first',
      ['M'] = 'select_middle',
      ['G'] = 'select_last',
      ['L'] = 'select_last',
      ['gg'] = 'select_first',
      ['j'] = 'select_next',
      ['k'] = 'select_previous',
    },
  },
  margin = 10,
  never_show_dot_files = false,
  order = 'forward', -- 'forward' or 'reverse'.
  position = 'center', -- 'bottom', 'center' or 'top'.
  open = function(item, kind)
    commandt.open(item, kind)
  end,
  scanners = {
    git = {
      submodules = true,
      untracked = false,
    },
  },
  selection_highlight = 'PMenuSel',
  smart_case = nil, -- nil means "infer from Neovim's 'smartcase'".
  threads = nil, -- nil means "auto".
})
