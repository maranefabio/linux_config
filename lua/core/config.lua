-- Colorscheme
vim.o.background = "dark"
vim.cmd([[colorscheme carbonfox]])

-- Indentation
vim.opt.tabstop = 2
vim.opt.smartindent = true
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- LSP
require('mason-lspconfig').setup({
  ensure_installed = {
    'lua_ls',
    'ruff_lsp',
    'pylsp',
    'rust_analyzer',
    'clangd',
    'bashls'
  }
})


require('lspconfig').pylsp.setup{
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = {'E501', 'E265', 'E605'},
          maxLineLength = 100
        }
      }
    }
  }
}

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
