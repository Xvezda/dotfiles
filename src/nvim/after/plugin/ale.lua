vim.keymap.set('n', '<leader>=', vim.cmd.ALEFix)

vim.g.ale_fixers = {
	javascript = {'prettier', 'eslint'},
	typescript = {'prettier', 'eslint'},
	typescriptreact = {'prettier', 'eslint'},
	vue = {'prettier', 'eslint'},
	css = {'prettier', 'eslint'},
}

vim.g.ale_virtualtext_cursor = false
vim.g.ale_set_signs = 0

vim.g.ale_lint_delay=0

vim.g.ale_disable_lsp = 1

vim.g.ale_completion_enabled = 0
vim.g.ale_completion_autoimport = 0
