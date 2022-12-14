return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'dracula/vim'
  use 'morhetz/gruvbox'
	use 'neovim/nvim-lspconfig'
	use 'preservim/nerdtree'
	use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = {{'nvim-lua/plenary.nvim'}}
  }
  use 'vim-airline/vim-airline'
  use 'Yggdroot/indentLine'
  use 'yamatsum/nvim-cursorline'
  use 'lewis6991/gitsigns.nvim'
  use 'neoclide/coc.nvim'
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end}
end)
