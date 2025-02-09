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

  -- Barbar -> Tabs
  use 'lewis6991/gitsigns.nvim'
  use 'romgrk/barbar.nvim'

  -- File explorer
  use 'nvim-tree/nvim-tree.lua'
  use {
    'nvim-neo-tree/neo-tree.nvim',
    branch = "v3.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      'ryanoasis/vim-devicons'
    }
  }

  -- Notifications
  use 'rcarriga/nvim-notify'
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
  use {
    "catppuccin/nvim", as = "catppuccin",
  }
  use 'rebelot/kanagawa.nvim'
  use "bluz71/vim-moonfly-colors"
  use 'zaldih/themery.nvim'
  use 'folke/tokyonight.nvim'
  use {
    "nobbmaestro/nvim-andromeda",
    requires = { "tjdevries/colorbuddy.nvim", branch = "dev" }
  }
  use({ 'projekt0n/github-nvim-theme' })

  -- Terminal
  use { "akinsho/toggleterm.nvim", tag = '*' }
  -- Syntaxis
  use 'neovim/nvim-lspconfig'
  use 'nvim-treesitter/nvim-treesitter'
  use {
    'jose-elias-alvarez/null-ls.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }

  --  Tmux navigation
  use 'christoomey/vim-tmux-navigator'

  -- Intelisense -> Autocomplete too
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'onsails/lspkind-nvim'
  use({
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!:).
    run = "make install_jsregexp",
    requires = { "rafamadriz/friendly-snippets" }
  })

  -- Brackers -> Autoclose a' highlighting
  use 'windwp/nvim-autopairs'

  -- Function lines -> Hightlihgting for function limits
  use 'lukas-reineke/indent-blankline.nvim'

  -- Prettier
  use 'MunifTanjim/prettier.nvim'

  -- GIT integration
  use 'tpope/vim-fugitive'

  -- Markdown preview
  use { 'iamcco/markdown-preview.nvim' }


  -- Dashboard
  use {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        -- config
      }
    end,
    requires = { 'nvim-tree/nvim-web-devicons' }
  }

  -- Github copilot
  use 'github/copilot.vim'
end)

-- Packer ends
