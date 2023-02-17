local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
	'tsserver',
	'eslint'
})

lsp.configure('sumneko_lua', {
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' }
			}
		}
	}
})

local lspconfig = require('lspconfig')

lspconfig.tsserver.setup {
	cmd = { 'yarn', 'typescript-language-server', '--stdio' }
}

local cmp = require('cmp')
local use_default = function(fallback) fallback() end
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-n>'] = cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Select}),
	['<C-p>'] = cmp.mapping.select_prev_item({behavior = cmp.SelectBehavior.Select}),
	['<Tab>'] = cmp.mapping.confirm({select = false}),
	['<C-space>'] = cmp.mapping(function()
		if cmp.visible() then
			cmp.abort()
		else
			cmp.complete()
		end
	end),
	['<C-e>'] = use_default,
	['<CR>'] = use_default,
	['<S-Tab>'] = use_default
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})

lsp.nvim_workspace()

lsp.setup()

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = false,
  float = true,
})

