-- gruvbox
require('gruvbox').setup({
    italic={strings=false},
    contrast='hard'
})

-- Mason
require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "rust_analyzer", "pylsp", "ruff" },
}


-- LSP


-- Colorscheme
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

-- Indentation
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.opt.shiftwidth = 4
vim.opt.expandtab = true


-- LuaLine
require('lualine').setup({
    options = {theme = 'gruvbox'}
})

--Which-Key
local wk = require('which-key')
wk.add({
    { "<leader>a", group = "Harpoon" },
    { "<leader>e", group = "Explore" },
    { "<leader>et", "<cmd>Neotree toggle<cr>", desc = "Toggle Neotree Window" },
    { "<leader>ex", "<cmd>Ex<cr>", desc = "File Explorer" },
    { "<leader>f", group = "Find" },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File" },
    { "<leader>fg", "<cmd>Telescope grep_string<cr>", desc = "Find String" },
    { "<leader>g", group = "Git" },
    { "<leader>gf", "<cmd>Telescope git_files<cr>", desc = "Git Files" },
})



