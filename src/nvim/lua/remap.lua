vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('x', '<leader>p', '"_dP')
vim.keymap.set('n', '<leader>d', '"_d')
vim.keymap.set('v', '<leader>d', '"_d')
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')

vim.keymap.set('n', 'J', 'm`J``')
vim.keymap.set('n', 'gJ', 'm`gJ``')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- TODO: Get used to CTRL-C
vim.keymap.set('i', '<C-c>', '<Esc>')
vim.keymap.set('n', '<C-c>', '<Esc>')
vim.keymap.set('i', '<Esc>', '<nop>')
vim.keymap.set('i', '<Esc><Esc>', '<Esc>')
-- END OF TODO

vim.keymap.set("n", "<C-`>", function()
	vim.api.nvim_command('setlocal splitbelow')
	vim.api.nvim_command('split +terminal')
	vim.api.nvim_command('startinsert')

	vim.keymap.set("t", "<C-`>", '', {
			callback = function()
				vim.api.nvim_command("q")
			end
	})
	vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
end)
