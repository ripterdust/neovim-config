local telescope = require('telescope')

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
    },
    lualine_c = {
      {
        'filename',
        on_click = function()
          -- Abre floaterm y NERDTree
          vim.cmd('FloatermNew --height=0.4 --width=0.8 --title=Terminal') -- Ajusta altura y ancho según sea necesario
          vim.cmd('NERDTreeToggle')
        end
      },
    },
  }
}
