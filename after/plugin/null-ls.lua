local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting

null_ls.setup({
    sources = {
        formatting.prettier,
        formatting.prettierd,
        formatting.black,
    },
on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = vim.lsp.buf.format,
      })
    end
  end
  })  



    -- you can reuse a shared lspconfig on_attach callback here


