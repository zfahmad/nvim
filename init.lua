vim.g.maplocalleader = ","
vim.g.mapleader = ","

-- IMPORTS
require('plug')
require('vars')
require('opts')
require('keys')
require("mason").setup {}
require("mason-lspconfig").setup {}
require('lsp_config')
require('lua_lsp_config')
require('dap_init')
require('dap_keymaps')

-- PLUGINS
require('dressing').setup()
require('nvim-web-devicons').setup()
require('gitsigns').setup()
require('nvim-cmp')
require('nvim-surround').setup()
require('treesj').setup()
require('nnn').setup ({
    explorer = {
        width = 30
    }
})
require('lualine').setup ({
    options = {
        theme = 'catppuccin',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
    }
})
require('Comment').setup {}
require("ibl").setup {}
-- require('nvim-autopairs').setup {}
-- require('lspsaga').setup {}
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
        "vimdoc",
        "lua",
        "markdown",
        "vim",
        "bash",
        "clojure",
    },
}
-- 
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
