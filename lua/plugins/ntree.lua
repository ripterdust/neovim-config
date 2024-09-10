vim.g.NERDTreeQuitOnOpen = 0

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*",
  callback = function()
    if vim.fn.tabpagenr('$') == 1 and vim.fn.winnr('$') == 1 and vim.b.NERDTreeBufName and vim.fn.bufname('%') == vim.b.NERDTreeBufName then
      vim.cmd('quit')
    end
  end
})

