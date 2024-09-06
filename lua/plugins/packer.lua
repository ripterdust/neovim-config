vim.api.nvim_create_autocmd("BufWritePost", {
  group = vim.api.nvim_create_augroup("PACKER", { clear = true }),
  pattern = "plugins.lua",
  command = "source <afile> | PackerCompile",
})

return require('packer').startup(function(use)
  -- DO NOT REMOVE -> Packer
  use 'wbthomason/packer.nvim'
  -- Barbar -> Tabs
  use 'nvim-tree/nvim-web-devicons'
  use 'lewis6991/gitsigns.nvim'
  use 'romgrk/barbar.nvim'

  -- Vim plug
  use 'preservim/nerdtree'

  -- Lua line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
end)
