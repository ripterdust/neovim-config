local telescope = require('telescope.builtin')

require('lualine').setup {
  options = {
    globalstatus = true
  },
  sections = {
    lualine_b = {
      {
        'branch',
        icons_enabled = true,
        on_click = function()
          telescope.git_branches()
        end
      }
    },
 
    lualine_c = {
      {
        'filename',
        on_click = function()
          vim.cmd('NvimTreeToggle')
        end,
        path = 1
      },
    },
  }
}
