require('catppuccin').setup({
  flavour = "mocha",
  color_overrides = {
    mocha = {
      base = "#000000",
      mantle = "#000000",
      crust = "#000000",
    },
  },

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
