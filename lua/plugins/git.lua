require('gitsigns').setup({
  signs = {
    add = { text = '+' },
    change = { text = '~' },
    delete = { text = '-' },
    topdelete = { text = '‾' },
    changedelete = { text = '~' },
  },
  signcolumn = true,
  numh1 = false,
  lineh1 = false,
  word_diff = false
})


