local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")

  local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packeradd packer.nvim]]
    print("Packer is installed successfully")
    return true
  end
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  use{
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }

  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'L3MON4D3/LuaSnip' -- Snippets
  use 'hoob3rt/lualine.nvim' --Statusline
  use 'onsails/lspkind-nvim' -- vscoode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp soure foor buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig' -- LSP 
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'nvim-telescope/telescope-file-browser.nvim'

  use 'akinsho/nvim-bufferline.lua'
  use 'norcalli/nvim-colorizer.lua'

  -- Color scheme
  -- use '~/projects/personal/vim-nazgul'
  use 'hardselius/warlock'
  use 'arzg/vim-substrata'
  use 'sainnhe/gruvbox-material'
  use 'RRethy/nvim-base16'
end)
