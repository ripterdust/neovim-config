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
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.o.swapfile = false
vim.opt.mouse = 'a'
vim.opt.clipboard = 'unnamedplus'
vim.o.foldmethod = "indent"
vim.o.foldlevel = 99
vim.o.foldenable = true
