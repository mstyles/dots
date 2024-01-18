-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'nvim-lua/plenary.nvim'

  use 'neovim/nvim-lspconfig'

  use {'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim'}
  use('tpope/vim-fugitive') -- Use both fugitive and neogit while I evaluate neogit
  use 'ruanyl/vim-gh-line'

  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  use {'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = 'nvim-lua/plenary.nvim'}

  use 'mileszs/ack.vim'

  use 'nvim-lualine/lualine.nvim'

  use 'nvim-tree/nvim-web-devicons'

  use 'marilari88/twoslash-queries.nvim'

  use 'editorconfig/editorconfig-vim'

  -- todo: set up Legendary w/ which-key
  -- use 'mrjones2014/legendary.nvim'
  -- use {
  --   "folke/which-key.nvim",
  --   config = function()
  --     require("which-key").setup {}
  --   end
  -- }

  
  -- use {
  --     "vinnymeller/swagger-preview.nvim",
  --     run = "npm install -g swagger-ui-watcher",
  -- }

  use {
    'kdheepak/tabline.nvim',
    config = function()
      require'tabline'.setup {}
      vim.cmd[[
        set guioptions-=e " Use showtabline in gui vim
        set sessionoptions+=tabpages,globals " store tabpages and globals in session
      ]]
    end,
    requires = { { 'hoob3rt/lualine.nvim', opt=true }, {'kyazdani42/nvim-web-devicons', opt = true} }
  }

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup({
          ---LHS of operator-pending mappings in NORMAL and VISUAL mode
        opleader = {
            ---Line-comment keymap
            line = '<C-c>',
        },
      })
    end
  }

  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }

  use {
    'tamton-aquib/duck.nvim',
    config = function()
        vim.keymap.set('n', '<leader>dd', function() require("duck").hatch() end, {})
        vim.keymap.set('n', '<leader>dk', function() require("duck").cook() end, {})
    end
  }

  use 'folke/tokyonight.nvim'
end)
