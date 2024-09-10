require('telescope').setup {
  pickers = {
    find_files = {
      theme = 'ivy'
    }
  },
  defaults = {
    file_ignore_patterns = {
      'node_modules/.*',
      'dist/.*'
    }
  }
}
