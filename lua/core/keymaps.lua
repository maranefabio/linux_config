-- File explorer
vim.keymap.set('n', '<leader>ex', vim.cmd.Ex)

-- Cursor/Window movement
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-left>', "<cmd>vertical resize -2<cr>")
vim.keymap.set('n', '<C-right>', "<cmd>vertical resize +2<cr>")

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', function()
  builtin.grep_string({search = vim.fn.input('Grep >> ')})
end)

-- Neotree
vim.keymap.set('n', '<leader>et', '<Cmd>Neotree toggle<CR>')

-- Buffer
vim.keymap.set('n', ')', vim.cmd.bnext)
vim.keymap.set('n', '(', vim.cmd.bprevious)

