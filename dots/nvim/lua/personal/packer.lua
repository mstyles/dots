-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use('nvim-lua/plenary.nvim')

  use('neovim/nvim-lspconfig')

  use {'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim'}
  use 'airblade/vim-gitgutter'
  use 'ruanyl/vim-gh-line'

  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  use {'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = 'nvim-lua/plenary.nvim'}

  use 'nvim-lualine/lualine.nvim'

  use 'nvim-tree/nvim-web-devicons'

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

  use 'folke/tokyonight.nvim'
end)
