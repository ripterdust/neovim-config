
require('catppuccin').setup({
  flavour = "mocha"
})

require('kanagawa').setup({
  compile = false,
  undercurl = true,
  keywordStyle = {
    italic = true,
  },
  statementStyle = {
    bold = true,
  },
  transparent = false,
})

--vim.cmd.colorscheme "kanagawa"
