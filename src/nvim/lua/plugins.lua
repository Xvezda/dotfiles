-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	}

	use {
		'nvim-telescope/telescope.nvim',
		-- tag = '0.1.0',
		branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use 'ThePrimeagen/harpoon'

	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use 'nvim-treesitter/playground'

	use 'mbbill/undotree'

	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}

	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	use 'dense-analysis/ale'

	use 'tpope/vim-sleuth'
	use 'tpope/vim-surround'
	use 'tpope/vim-fugitive'
	use 'tpope/vim-repeat'

	use 'wakatime/vim-wakatime'
end)
