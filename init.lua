-- Leader key
vim.g.mapleader = ' '

require('core.lazy')
require('core.keymaps')
require('core.config')

vim.wo.relativenumber = true
vim.cmd('Ex')

