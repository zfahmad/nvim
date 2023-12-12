vim.g.mapleader = ","
vim.g.localleader = "\\"

-- IMPORTS
require('vars')
require('opts')
require('keys')
require('plug')
require("nvim-lsp-installer").setup {}
require('lsp_config')
-- require('lua_lsp_config')
-- require('dap_init')
-- require('dap_keymaps')

-- PLUGINS
require('nnn').setup {}
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
    "cpp"
  },
}
-- 
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
