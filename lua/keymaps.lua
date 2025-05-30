local map = vim.keymap.set

map('n', '<c-a>', 'ggVG')

map({ 'n', 'x' }, '<leader>p', '"0p')

map('n', '<leader>q', '<cmd>q<cr>')
map('n', '<leader>w', '<cmd>w<cr>')
map('n', '<leader>x', '<cmd>x<cr>')

map('n', 'j', [[v:count?'j':'gj']], { expr = true })
map('n', 'k', [[v:count?'k':'gk']], { expr = true })

map('n', '<leader>n', function()
  vim.cmd.edit '~/note.md'
end)

map('n', 'dd', function()
  local line = vim.api.nvim_get_current_line()
  if line:match '^%s*$' then
    return '"_dd'
  end
  return 'dd'
end, { expr = true })
