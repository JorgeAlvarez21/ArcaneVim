-- Create a local key mapping for <space>b that creates a new buffer
vim.cmd [[
  nnoremap <silent> <leader>b :enew<CR>
]]

-- Create a local key mapping for <leader>x to close the current buffer or file
vim.cmd [[
  nnoremap <silent> <leader>x :bdelete! %<CR>
]]

-- Switch to the next buffer with <Tab>
vim.api.nvim_set_keymap('n', '<Tab>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })

-- Switch to the previous buffer with <S-Tab>
vim.api.nvim_set_keymap('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })

-- Load the BufferLine plugin
require('bufferline').setup{
  options = {
    numbers = "none",
    number_style = "superscript",
    mappings = true,
    close_command = "bdelete! %d",
    right_mouse_command = "bdelete! %d",
    left_mouse_command = "buffer %d",
    middle_mouse_command = nil,
    indicator = '▎',
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    name_formatter = function(buf)  -- buf contains a 'name', 'path' and 'bufnr'
      -- remove extension from markdown files for example
      if buf.name:match('%.md') then
        return vim.fn.fnamemodify(buf.name, ':t:r')
      end
    end,
    max_name_length = 18,
    max_prefix_length = 15,
    tab_size = 18,
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      return "("..count..")"
    end,
    offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "left"}},
    show_buffer_icons = true,
    show_buffer_close_icons = true,
    show_close_icon = true,
    show_tab_indicators = true,
    persist_buffer_sort = true,
    separator_style = "thin",
    enforce_regular_tabs = false,
    always_show_bufferline = true,
    sort_by = "directory",
  }
}

