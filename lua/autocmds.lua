local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

autocmd('BufWritePre', {
  pattern = '*.{js,jsx,ts,tsx,php,lua,html,css,scss,sass}',
  command = 'lua vim.lsp.buf.format({ async = false })'
})

local php = augroup('php', { clear = true })

autocmd('Filetype', {
  group = php,
  pattern = 'php',
  command = 'setl tabstop=4 shiftwidth=4'
})

autocmd({ 'BufNew', 'BufNewFile' }, {
  group = php,
  pattern = '*.php',
  command = 'execute "norm i<?php\\<cr>\\<cr>"'
})
