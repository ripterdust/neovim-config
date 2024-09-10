-- Main configuration of shortcuts
vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

function Global_shortcut(shortcut, command)
  map('n', shortcut, ':' .. command .. '<CR>', opts)
  map('i', shortcut, '<C-o>:' .. command .. '<CR>', opts)
end

-- Navigation shortcuts

-- Existing mappings
map('n', '<leader>f', ':NERDTreeToggle<CR>', opts)
map('n', '<C-p>', ':Telescope find_files<CR>', opts)
map('n', '<leader>t', ':ToggleTerm<CR>', opts)
Global_shortcut('<C-s>', ':w')
Global_shortcut('<C-w>', 'wq')
Global_shortcut('<C-k><C-w>', 'bufdo bd')
Global_shortcut('<C-k><C-f>', 'Telescope live_grep')
Global_shortcut('<C-k><C-w>', 'qa!')
Global_shortcut('<C-z>', 'undo')
