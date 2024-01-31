-- [[ plug.lua ]]

return require('packer').startup(function(use)
    -- Plugins go here
    use { 'wbthomason/packer.nvim' }
    use { 'catppuccin/nvim', as = 'catppuccin'}
    use { 'EdenEast/nightfox.nvim' }
    use { 'shaunsingh/nord.nvim' }
    use { 'dracula/vim' }
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons',
            opt = true}
    }
    use { 'yamatsum/nvim-cursorline' }
    use { 'sangdol/mintabline.vim' }
    use { 'danilamihailov/beacon.nvim' }
    -- use { 'vijaymarupudi/nvim-fzf' }
    use {
        "kylechui/nvim-surround",
        tag = "*",
        config = function()
            require("nvim-surround")
        end,
    }
    use {
        'rmagatti/goto-preview',
        config = function()
            require('goto-preview').setup {}
        end
    }
    use { 'stevearc/dressing.nvim' }
    use { 'rcarriga/nvim-notify' }
    use {
        'folke/noice.nvim',
        requires = { "MunifTanjim/nui.nvim" }
    }
    use {'christoomey/vim-tmux-navigator'}
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        }
    }

    -- [[ Dev ]]
    use {
        'nvim-telescope/telescope.nvim',
        requires = { 'nvim-lua/plenary.nvim' }
    }
    -- use { 'mfussenegger/nvim-lint' }
    use { 'majutsushi/tagbar' }
    -- use { 'Yggdroot/indentLine' }
    use { 'tpope/vim-fugitive' }
    use { 'junegunn/gv.vim' }
    -- use { 'windwp/nvim-autopairs' }
    use { 'junegunn/fzf' }
    use { 'neovim/nvim-lspconfig' }
    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'saadparwaiz1/cmp_luasnip' }
    use { 'L3MON4D3/LuaSnip' }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({with_sync = true})
            ts_update()
        end,
    }
    use {
        "Wansmer/treesj",
        requires = { "nvim-treesitter/nvim-treesitter" },
        config = function()
            require("treesj").setup {}
        end,
    }
    use { 'lukas-reineke/indent-blankline.nvim' }
    use {
        'numToStr/Comment.nvim',
        config = function ()
            require ('Comment').setup()
	end
    }
    use {
        'nvimdev/lspsaga.nvim',
        after = "nvim-lspconfig",
        config = function()
            require("lspsaga")
        end,
    }
    use { 'voldikss/vim-floaterm'}
    use { 'williamboman/mason.nvim' }
    use { 'williamboman/mason-lspconfig.nvim' }
    use { 'nvimtools/none-ls.nvim' }
    use { 'jay-babu/mason-null-ls.nvim' }
    use { 'luukvbaal/nnn.nvim' }
    use { 'mbbill/undotree' }
    use { 'folke/zen-mode.nvim' }
    use { 'folke/trouble.nvim' }
    use { 'lewis6991/gitsigns.nvim' }
    use { 'nvim-tree/nvim-web-devicons'}

    -- [[ Conjure for REPL ]]
    use { 'Olical/conjure' }
    use { 'guns/vim-sexp' }


    -- -- DAP Plugins
    use { "folke/which-key.nvim" }
    use { "mfussenegger/nvim-dap" }
    use { "mfussenegger/nvim-dap-python" }
    use { "rcarriga/nvim-dap-ui" }
    use { "theHamsta/nvim-dap-virtual-text" }
    -- use { "nvim-telescope/telescope-dap.nvim" }
    --
    use {
    "nvim-neorg/neorg",
    config = function()
        require('neorg').setup {
            load = {
                ["core.defaults"] = {}, -- Loads default behaviour
                ["core.concealer"] = {}, -- Adds pretty icons to your documents
                ["core.dirman"] = { -- Manages Neorg workspaces
                    config = {
                        workspaces = {
                            notes = "~/notes",
                        },
                    },
                },
            },
        }
    end,
    run = ":Neorg sync-parsers",
    requires = "nvim-lua/plenary.nvim",
}
 end)

