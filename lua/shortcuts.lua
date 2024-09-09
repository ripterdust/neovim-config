-- Main configuration of shortcuts
vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

function Global_shortcut(shortcut, command)
  map('n', shortcut, ':' .. command .. '<CR>', opts)
  map('i', shortcut, '<C-o>:' .. command .. '<CR>', opts)
end

-- Existing mappings
map('n', '<leader>f', ':NERDTreeToggle<CR>', opts)
map('n', '<C-p>', ':Telescope find_files<CR>', opts)
map('n', '<leader>t', ':FloatermNew<CR>', opts)

Global_shortcut('<C-s>', ':w')
Global_shortcut('<C-k><C-w>', 'bufdo bd')
