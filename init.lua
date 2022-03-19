vim.g.mapleader = ","
vim.g.localleader = "\\"

-- IMPORTS
require('vars')
require('opts')
require('keys')
require('plug')
require('lsp_config')
require('lua_lsp_config')

-- PLUGINS
require('nvim-tree').setup {}
require('lualine').setup {
    options = {
        theme = 'nightfox'
    }
}
require('nvim-autopairs').setup {}
require('nvim-treesitter.configs').setup {
    highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "python",
    "c",
    "cpp",
    "lua"
  },
}

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

-- LSP
--require('lspconfig').pyright.setup {}
--require('lspconfig').clangd.setup {}
