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
require('goto-preview').setup({
    default_mappings = true
})
require("noice").setup({
  lsp = {
    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        progress = {
            enabled = false
        },
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true,
    },
  },
  -- you can enable a preset for easier configuration
  presets = {
    bottom_search = true, -- use a classic bottom cmdline for search
    command_palette = true, -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = false, -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = false, -- add a border to hover docs and signature help
  },
})
require('nvim-web-devicons').setup()
require('gitsigns').setup()
require('nvim-cmp')
require('nvim-surround').setup()
require('treesj').setup()
require('nnn').setup ({
    explorer = {
        cmd = "nnn -G",
        width = 30
    },
    picker = {
        style = {
            border = "rounded"
        }
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
