-- Colorscheme
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

-- Indentation
vim.opt.tabstop = 2
vim.opt.smartindent = true
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Bufferline
vim.opt.termguicolors = true
require("bufferline").setup{}

-- LSP
require('mason-lspconfig').setup({
  ensure_installed = {
    'lua_ls',
    'pyright',
    'rust_analyzer',
    'clangd',
    'jdtls',
    'bashls'
  }
})

-- LuaLine
require('lualine').setup({
  options = {theme = 'gruvbox'}
})

-- Which-Key
local wk = require('which-key')
wk.register({
  ["<leader>f"] = {
    name = "+Find",
    f = { "<cmd>Telescope find_files<cr>", "Find File" },
    g = { "<cmd>Telescope grep_string<cr>", "Find String" },
  },
  ["<leader>g"] = {
    name = "+Git",
    f = { "<cmd>Telescope git_files<cr>", "Git Files" },
  },
  ["<leader>e"] = {
    name = "+Explore",
    x = { "<cmd>Ex<cr>", "File Explorer" },
    t = { "<cmd>Neotree toggle<cr>", "Toggle Neotree Window" }
  },
})

