require('notify').setup {
  stages = "fade_in_slide_out",
  timeout = 5000,
  background_colour = "#1f2335",
  minimum_width = 50,
  max_width = nil,
  max_height = nil,
  render = "default",
}

vim.api.nvim_err_writeln = function(msg)
  require('notify')(msg, "error", { title = "Vim Error" })
end

vim.notify = require('notify')

