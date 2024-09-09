vim.api.nvim_create_autocmd("BufWritePost", {
  group = vim.api.nvim_create_augroup("PACKER", { clear = true }),
  pattern = "plugins.lua",
  command = "source <afile> | PackerCompile",
})

return require('packer').startup(function(use)
  -- DO NOT REMOVE -> Packer
  use 'wbthomason/packer.nvim'

  use {
    'nvim-tree/nvim-web-devicons',
    config = function()
      require 'nvim-web-devicons'.setup {}
    end
  }

  use 'ryanoasis/vim-devicons'

  -- NERDTree -> File explorer
  use 'preservim/nerdtree'


  -- Barbar -> Tabs
  use 'lewis6991/gitsigns.nvim'
  use 'romgrk/barbar.nvim'


  -- Lua line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- Telescope (used for file and branch finding)
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  }

  -- Theme
  use { "catppuccin/nvim", as = "catppuccin" }

  -- Terminal
  use 'voldikss/vim-floaterm'

  -- Syntaxis
  use 'neovim/nvim-lspconfig'
  use 'nvim-treesitter/nvim-treesitter'

  --  Tmux navigation
  use 'christoomey/vim-tmux-navigator'
end)
