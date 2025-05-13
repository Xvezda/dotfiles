vim.api.nvim_exec('language en_US', true)

vim.g.mapleader = " "

vim.opt.guicursor = ""
vim.opt.cursorline = true

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('x', '<leader>p', '"_dP')
vim.keymap.set('n', '<leader>d', '"_d')
vim.keymap.set('v', '<leader>d', '"_d')
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')
vim.keymap.set('n', '<leader>nt', ':Ex<CR>')

vim.keymap.set('n', 'J', 'm`J``')
vim.keymap.set('n', 'gJ', 'm`gJ``')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('i', '<C-c>', '<Esc>')

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function ()
    vim.keymap.set('n', 'grn', vim.lsp.buf.rename)
    vim.keymap.set({'n', 'v'}, 'gra', vim.lsp.buf.code_action)
    vim.keymap.set('n', 'grr', vim.lsp.buf.references)
    vim.keymap.set('n', 'gri', vim.lsp.buf.implementation)
    vim.keymap.set('n', 'gO', vim.lsp.buf.document_symbol)
    vim.keymap.set('i', '<C-s>', vim.lsp.buf.signature_help)
  end,
})

vim.opt.spell = true
vim.opt.spelllang = 'en_us'

vim.cmd { cmd = 'cnoreabbrev', args = {'Q!', 'q!'} }
vim.cmd { cmd = 'cnoreabbrev', args = {'W!', 'w!'} }
vim.cmd { cmd = 'cnoreabbrev', args = {'Q!', 'q!'} }
vim.cmd { cmd = 'cnoreabbrev', args = {'Q1', 'q!'} }
vim.cmd { cmd = 'cnoreabbrev', args = {'Qall!', 'qall!'} }
vim.cmd { cmd = 'cnoreabbrev', args = {'Wq', 'wq'} }
vim.cmd { cmd = 'cnoreabbrev', args = {'Wa', 'wa'} }
vim.cmd { cmd = 'cnoreabbrev', args = {'wQ', 'wq'} }
vim.cmd { cmd = 'cnoreabbrev', args = {'WQ', 'wq'} }
vim.cmd { cmd = 'cnoreabbrev', args = {'qw', 'wq'} }
vim.cmd { cmd = 'cnoreabbrev', args = {'W', 'w'} }
vim.cmd { cmd = 'cnoreabbrev', args = {'Q', 'q'} }
vim.cmd { cmd = 'cnoreabbrev', args = {'Qall', 'qall'} }

vim.cmd { cmd = 'iabbrev', args = {'Flase', 'False'} }
vim.cmd { cmd = 'iabbrev', args = {'Ture', 'True'} }
vim.cmd { cmd = 'iabbrev', args = {'abrot', 'abort'} }
vim.cmd { cmd = 'iabbrev', args = {'acutal', 'actual'} }
vim.cmd { cmd = 'iabbrev', args = {'amin', 'main'} }
vim.cmd { cmd = 'iabbrev', args = {'breka', 'break'} }
vim.cmd { cmd = 'iabbrev', args = {'calss', 'class'} }
vim.cmd { cmd = 'iabbrev', args = {'cavnas', 'canvas'} }
vim.cmd { cmd = 'iabbrev', args = {'cosnt', 'const'} }
vim.cmd { cmd = 'iabbrev', args = {'ednl', 'endl'} }
vim.cmd { cmd = 'iabbrev', args = {'exprot', 'export'} }
vim.cmd { cmd = 'iabbrev', args = {'exprots', 'exports'} }
vim.cmd { cmd = 'iabbrev', args = {'firend', 'friend'} }
vim.cmd { cmd = 'iabbrev', args = {'flase', 'false'} }
vim.cmd { cmd = 'iabbrev', args = {'fucntion', 'function'} }
vim.cmd { cmd = 'iabbrev', args = {'funciton', 'function'} }
vim.cmd { cmd = 'iabbrev', args = {'futrue', 'future'} }
vim.cmd { cmd = 'iabbrev', args = {'heigth', 'height'} }
vim.cmd { cmd = 'iabbrev', args = {'imoprt', 'import'} }
vim.cmd { cmd = 'iabbrev', args = {'imporve', 'improve'} }
vim.cmd { cmd = 'iabbrev', args = {'improt', 'import'} }
vim.cmd { cmd = 'iabbrev', args = {'incldue', 'include'} }
vim.cmd { cmd = 'iabbrev', args = {'inlcude', 'include'} }
vim.cmd { cmd = 'iabbrev', args = {'ipmort', 'import'} }
vim.cmd { cmd = 'iabbrev', args = {'itme', 'item'} }
vim.cmd { cmd = 'iabbrev', args = {'itmes', 'items'} }
vim.cmd { cmd = 'iabbrev', args = {'lnog', 'long'} }
vim.cmd { cmd = 'iabbrev', args = {'namepsace', 'namespace'} }
vim.cmd { cmd = 'iabbrev', args = {'paht', 'path'} }
vim.cmd { cmd = 'iabbrev', args = {'pakcage', 'package'} }
vim.cmd { cmd = 'iabbrev', args = {'pakcages', 'packages'} }
vim.cmd { cmd = 'iabbrev', args = {'paylaod', 'payload'} }
vim.cmd { cmd = 'iabbrev', args = {'priavte', 'private'} }
vim.cmd { cmd = 'iabbrev', args = {'pyaload', 'payload'} }
vim.cmd { cmd = 'iabbrev', args = {'reqeust', 'request'} }
vim.cmd { cmd = 'iabbrev', args = {'requrie', 'require'} }
vim.cmd { cmd = 'iabbrev', args = {'retrun', 'return'} }
vim.cmd { cmd = 'iabbrev', args = {'reutrn', 'return'} }
vim.cmd { cmd = 'iabbrev', args = {'riase', 'raise'} }
vim.cmd { cmd = 'iabbrev', args = {'rnage', 'range'} }
vim.cmd { cmd = 'iabbrev', args = {'sefl', 'self'} }
vim.cmd { cmd = 'iabbrev', args = {'slef', 'self'} }
vim.cmd { cmd = 'iabbrev', args = {'ture', 'true'} }
vim.cmd { cmd = 'iabbrev', args = {'virutal', 'virtual'} }
vim.cmd { cmd = 'iabbrev', args = {'vodi', 'void'} }
vim.cmd { cmd = 'iabbrev', args = {'wdith', 'width'} }
vim.cmd { cmd = 'iabbrev', args = {'whiel', 'while'} }
vim.cmd { cmd = 'iabbrev', args = {'widht', 'width'} }
vim.cmd { cmd = 'iabbrev', args = {'yeild', 'yield'} }

-- Lazy

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  {
    "folke/tokyonight.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('tokyonight').setup({
	transparent = true,
	styles = {
	  sidebars = "transparent",
	  floats = "transparent",
	},
	cache = true,
      })
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight]])

      vim.api.nvim_set_hl(0, "CursorLine", { bg = "#272b45" })
      vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#636da6" })
    end,
  },

  {
    'VonHeikemen/lsp-zero.nvim',
    dependencies = {
      {
	'neovim/nvim-lspconfig',
	{
	  'hrsh7th/nvim-cmp',
	  dependencies = {
	    'hrsh7th/cmp-nvim-lsp',
	    'hrsh7th/cmp-vsnip',
	    'hrsh7th/vim-vsnip',
	    {
	      "zbirenbaum/copilot.lua",
	      cmd = "Copilot",
	      event = "InsertEnter",
	      dependencies = {
		{
		  "zbirenbaum/copilot-cmp",
		  config = function()
		    require('copilot_cmp').setup()
		  end
		}
	      },
	      config = function()
		require('copilot').setup({
		  panel = {
		    enabled = false
		  },
		  suggestion = {
		    enabled = true,
		    auto_trigger = true,
		    keymap = {
		      accept = '<M-\\>',
		      next = '<M-n>',
		      prev = '<M-p>'
		    }
		  },
		})
	      end,
	    },
	  },
	  config = function()
	    local cmp = require('cmp')

	    local feedkey = function(key, mode)
	      vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
	    end

	    cmp.setup({
	      snippet = {
		expand = function (args)
		  vim.fn["vsnip#anonymous"](args.body)
		end,
	      },
	      sources = {
		{ name = 'nvim_lsp' },
	      },
	      completion = {
		completeopt = 'menu,menuone,preview',
	      },
	      mapping = cmp.mapping.preset.insert({
		['<CR>'] = cmp.mapping(function(fallback)
		  if cmp.visible() then
		    cmp.confirm({ select = true })
		  else
		    fallback()
		  end
		end, { "i", "s" }),

		["<Tab>"] = cmp.mapping(function(fallback)
		  if cmp.visible() then
		    cmp.confirm({ select = true })
		  elseif vim.fn["vsnip#available"](1) == 1 then
		    feedkey("<Plug>(vsnip-expand-or-jump)", "")
		  else
		    fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
		  end
		end, { "i", "s" }),

		["<S-Tab>"] = cmp.mapping(function()
		  if cmp.visible() then
		    cmp.select_prev_item()
		  elseif vim.fn["vsnip#jumpable"](-1) == 1 then
		    feedkey("<Plug>(vsnip-jump-prev)", "")
		  end
		end, { "i", "s" }),

		["<C-n>"] = cmp.mapping(function ()
		  cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
		  local entry = cmp.get_selected_entry()
		  if not entry then
		    cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
		  end
		end, { "i", "s" }),

		["<C-p>"] = cmp.mapping(function ()
		  cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
		  local entry = cmp.get_selected_entry()
		  if not entry then
		    cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
		  end
		end, { "i", "s" }),
	      })
	    })
	  end
	}
      },
      'hrsh7th/cmp-nvim-lua',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      {
	'williamboman/mason.nvim',
	branch = "v1.x",
	config = function()
	  require("mason").setup()
	end
      },
      {
	'williamboman/mason-lspconfig.nvim',
	branch = "v1.x",
      },
    },
    config = function()
      local lsp_zero = require("lsp-zero")
      lsp_zero.preset('recommend')

      lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({buffer = bufnr})
      end)

      local mason = require('mason')
      local mason_lspconfig = require('mason-lspconfig')

      mason.setup({})
      mason_lspconfig.setup({
	-- Replace the language servers listed here 
	-- with the ones you want to install
	ensure_installed = {'lua_ls', 'tailwindcss', 'ts_ls', 'denols', 'volar', 'intelephense', 'rust_analyzer'},
	handlers = {
	  lua_ls = function ()
	    require('lspconfig').lua_ls.setup({
	      on_init = lsp_zero.on_init,
	      settings = {
		Lua = {
		  diagnostics = {
		    globals = {'vim'},
		  },
		},
	      },
	    })
	  end,
	  denols = function ()
	    require('lspconfig').denols.setup({
	      on_attach = lsp_zero.on_attach,
	      root_dir = require('lspconfig/util').root_pattern("deno.json", "deno.jsonc"),
	    })
	  end,
	  ts_ls = function ()
	    require('lspconfig').ts_ls.setup({
	      on_attach = lsp_zero.on_attach,
	      root_dir = require('lspconfig/util').root_pattern("package.json"),
	      single_file_support = false,
	      init_options = {
		hostInfo = "neovim",
		preferences = {
		  includeCompletionsForModuleExports = true,
		  includeCompletionsForImportStatements = true,
		  importModuleSpecifierPreference = "relative",
		},
		plugins = {
		  {
		    name = '@vue/typescript-plugin',
		    location = vim.fn.stdpath 'data' .. '/mason/packages/vue-language-server/node_modules/@vue/language-server',
		    languages = {"javascript", "typescript", "vue"},
		  },
		},
	      },
	      filetypes = {
		"javascript",
		"typescript",
		"vue",
	      },
	    })
	  end,
	  volar = function ()
	    require('lspconfig').volar.setup({
	      on_attach = lsp_zero.on_attach,
	      filetypes = { 'vue' },
	      init_options = {
		vue = {
		  hybridMode = false,
		},
	      },
	    })
	  end,
	  intelephense = function ()
	    require('lspconfig').intelephense.setup({
	      on_attach = lsp_zero.on_attach,
	      root_dir = require('lspconfig/util').root_pattern("composer.json", "Dockerfile", ".git"),
	    })
	  end,
	  rust_analyzer = function ()
	    require('lspconfig').rust_analyzer.setup({
	      on_attach = lsp_zero.on_attach,
	      settings = {
		["rust-analyzer"] = {
		  check = {
		    command = "clippy",
		  },
		  checkOnSave = true,
		  diagnostics = {
		    enable = true,
		    experimental = {
		      enable = true,
		    },
		  },
		},
	      },
	    })
	  end,
	},
      })

      lsp_zero.setup()

      vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	update_in_insert = false,
	underline = true,
	severity_sort = false,
	float = true,
      })
    end
  },

  {
    "nvimtools/none-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function ()
      local null_ls = require("null-ls")
      local null_ls_utils = require("null-ls.utils")
      null_ls.setup({
	sources = {
	  null_ls.builtins.diagnostics.phpstan.with({
	    cwd = function (params)
	      return null_ls_utils.root_pattern("composer.json")(params.bufname) or
	             null_ls_utils.root_pattern("phpstan.neon")(params.bufname) or
	             null_ls_utils.root_pattern("phpstan.neon.dist")(params.bufname) or
	             null_ls_utils.root_pattern("phpstan.dist.neon")(params.bufname) or
	             null_ls_utils.root_pattern(".git")(params.bufname)
	    end,
	  }),
	}
      })
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter-context",
    dependencies = {
      {
	'nvim-treesitter/nvim-treesitter',
	cmd = 'TSUpdate'
      },
    },
    opts = {
      mode = "topline",
      max_lines = 0,
      separator = "─",
    },
    config = function(_, opts)
      vim.api.nvim_set_hl(0, "TreesitterContext", {})
      vim.api.nvim_set_hl(0, "TreesitterContextSeparator", { fg = "#545c7e" })
      require("treesitter-context").setup(opts)
    end,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
    },
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {
      indent = {
	char = "▏",
      },
      scope = {
	enabled = true,
	highlight = {"CustomIblScope"},
	char = "▏",
	show_start = false,
	show_end = false,
	show_exact_scope = true,
	injected_languages = true,
      },
    },
    config = function(_, opts)
      vim.api.nvim_set_hl(0, "CustomIblScope", { fg = "#636da6" })
      require("ibl").setup(opts)
    end,
  },

  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
	"nvim-telescope/telescope-fzf-native.nvim",
	build = "make",
      },
    },
    keys = {
      { '<leader>ff', '<cmd>Telescope find_files<cr>' },
      { '<leader>fg', '<cmd>Telescope git_files<cr>' },
      { '<leader>fl', '<cmd>Telescope live_grep<cr>' }
    },
    config = function()
      require("telescope").load_extension("fzf")
    end,
  },

  {
    'mbbill/undotree',
    keys = {
      { '<leader>u', '<cmd>:UndotreeToggle<CR>' },
    },
  },

  'tpope/vim-sleuth',
  'tpope/vim-surround',
  'tpope/vim-fugitive',
  'tpope/vim-repeat',
  'tpope/vim-unimpaired',
  { 'wakatime/vim-wakatime', lazy = false }
})
