vim.api.nvim_create_autocmd("FocusLost", {
  pattern = "*",
  command = "silent! wa"
})
if vim.fn.has('win32') == 1 or vim.fn.has('win64') == 1 then
  vim.g.clipboard = {
    name = 'win32-clipboard',
    copy = {
      ['+'] = 'clip.exe',
      ['*'] = 'clip.exe',
    },
    paste = {
      ['+'] = 'powershell.exe Get-Clipboard',
      ['*'] = 'powershell.exe Get-Clipboard',
    },
    cache_enabled = 1,
  }
end

vim.wo.number = true
vim.wo.numberwidth = 4
