local telescope = require('telescope.builtin')

require('lualine').setup {
  sections = {
    lualine_b = {
      {
        'branch',
        icons_enabled = true,
        on_click = function()
          telescope.git_branches()
        end
      }
    }
  }
}
