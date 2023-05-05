
local lazygit = require('lazygit')
-- Set keymap for opening lazygit
vim.keymap.set('n', '<leader>lg', ':LazyGit<CR>' )


-- Create terminal buffer for lazygit
local lazygit_term_bufnr
local function lazygit_term_open()
  if lazygit_term_bufnr == nil then
    lazygit_term_bufnr = vim.api.nvim_create_buf(false, true)
  end

  local lazygit_term_job = vim.fn.jobstart({ 'lazygit', '-m', 'false' }, {
    cwd = vim.fn.expand('%:p:h'),
    on_exit = function(_, exit_code, _)
      if exit_code == 0 then
        vim.api.nvim_buf_delete(lazygit_term_bufnr, { force = true })
        lazygit_term_bufnr = nil
      end
    end
  })

  vim.fn.chansend(lazygit_term_job, "lazygit\n")
  vim.fn.termopen('lazygit', { cwd = vim.fn.expand('%:p:h'), on_exit = function(job_id, exit_code, eventtype) end }, lazygit_term_bufnr)
  vim.cmd([[autocmd! BufLeave <buffer> :silent! !kill -9 ]]..lazygit_term_job)
end

-- Set keymap for opening lazygit in terminal
vim.keymap.set('n', '<leader>lt', function() lazygit_term_open() end )

-- Set keymap for toggling lazygit window
vim.keymap.set('n', '<leader>l', function()
  local win_open = pcall(lazygit.open)
  if not win_open then
    lazygit_term_open()
  end
end)

