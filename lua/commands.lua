local command = vim.api.nvim_create_user_command
-- Organize imports commans

command(
'FormatDocument', 
function()
  local params = {
    command = "_typescript.organizeImports",
    arguments = { vim.api.nvim_buf_get_name(0) },
  }
  vim.lsp.buf.execute_command(params)

  -- Document formatting
  vim.lsp.buf.format({async = true})
end,
{}
)
