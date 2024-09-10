require('telescope').setup {
  pickers = {
    find_files = {
      theme = 'dropdown'
    }
  },
  defaults = {
    file_ignore_patterns = {
      'node_modules/.*',
      'dist/.*'
    }
  }
}
