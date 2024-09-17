-- Main configuration of shortcuts
vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

function Global_shortcut(shortcut, command)
  map('n', shortcut, ':' .. command .. '<CR>', opts)
  map('i', shortcut, '<C-o>:' .. command .. '<CR>', opts)
end

-- Navigation shortcuts
Global_shortcut('<C-1>', 'BufferGoto 1')

-- Existing mappings
map('n', '<leader>f', ':NvimTreeToggle<CR>', opts)
map('n', '<C-p>', ':Telescope find_files<CR>', opts)
map('n', '<leader>t', ':ToggleTerm<CR>', opts)
Global_shortcut('<C-s>', ':w')
Global_shortcut('<C-w>', 'execute "w" | execute "BufferClose"')
Global_shortcut('<C-k><C-w>', 'bufdo bd')
Global_shortcut('<C-k><C-f>', 'Telescope live_grep')
Global_shortcut('<C-k><C-w>', 'qa!')
Global_shortcut('<C-z>', 'undo')
Global_shortcut('<F-1>', 'Telescope commands')
Global_shortcut('<C-f>', 'Telescope live_grep')
Global_shortcut('<F1>', 'Telescope commands')
Global_shortcut('<C-b>', 'Telescope current_buffer_fuzzy_find')
Global_shortcut('<F2>', 'NvimTreeFindFile')



-- Mapea Ctrl+C para copiar al portapapeles en modo normal y visual
vim.api.nvim_set_keymap('n', '<C-c>', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<C-c>', '"+y', { noremap = true, silent = true })

