return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            highlight = { enable = true },
            indent = { enable = true },
            --     ensure_installed = {
            --         "python",
            --         "c",
            --         "cpp",
            --         "clojure",
            --         "vimdoc",
            --         "lua",
            --         "markdown",
            --         "vim",
            --     },
            auto_install = true,
        })
    end,
}
