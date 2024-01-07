vim.g.maplocalleader = ","
vim.g.mapleader = ","

-- IMPORTS
require('plug')
require('vars')
require('opts')
require('keys')
require("nvim-lsp-installer").setup {}
require('lsp_config')
-- require('lua_lsp_config')
require('dap_init')
require('dap_keymaps')

-- PLUGINS
require('nvim-cmp')
require('nnn').setup ({
    explorer = {
        width = 30
    }
})
require('lualine').setup {
    options = {
        theme = 'nightfox'
    }
}
require('Comment').setup {}
require("ibl").setup {}
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
        "clojure",
        "lua",
        "markdown",
        "vim",
        "bash",
    },
}
-- 
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
