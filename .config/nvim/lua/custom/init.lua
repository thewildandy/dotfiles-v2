vim.opt.colorcolumn = "80"

-- set filetype for tsx and jsx files
-- note the vim-jsx-typescript dots advise setting filetype to typescriptreact
-- instead of typescript.tsx, but I found that indentation was broken with that
-- setup. Perhaps in the future it can be implemented as per the documentation.
vim.api.nvim_exec([[
  autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
]], false)

vim.api.nvim_exec([[
  autocmd FileType sql,mysql,plsql lua require('cmp').setup.buffer({ sources = {{ name = 'vim-dadbod-completion' }} })
]], false)
