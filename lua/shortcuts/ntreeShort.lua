local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>f', ':NERDTreeToggle<CR>', opts)
map('n', '<C-p>', ':Telescope find_files<CR>', opts)
