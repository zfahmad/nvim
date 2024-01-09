-- [[ plug.lua ]]

return require('packer').startup(function(use)
-- Plugins go here
    use { 'wbthomason/packer.nvim' }
    use { 'catppuccin/nvim', as = 'catppuccin'}
    use { 'EdenEast/nightfox.nvim' }
    use { 'arcticicestudio/nord-vim' }
    use { 'dracula/vim' }
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons',
                    opt = true}
    }
    use { 'yamatsum/nvim-cursorline' }
    use { 'sangdol/mintabline.vim' }
    use { 'danilamihailov/beacon.nvim' }
    use { 'vijaymarupudi/nvim-fzf' }

    -- [[ Dev ]]
    use {
        'nvim-telescope/telescope.nvim',
        requires = { 'nvim-lua/plenary.nvim' }
    }
    use { 'majutsushi/tagbar' }
    use { 'Yggdroot/indentLine' }
    use { 'tpope/vim-fugitive' }
    use { 'junegunn/gv.vim' }
    use { 'windwp/nvim-autopairs' }
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
    use { 'lukas-reineke/indent-blankline.nvim' }
    use {
        'numToStr/Comment.nvim',
        config = function ()
            require ('Comment').setup()
	end
    }
    use { 'glepnir/lspsaga.nvim' }
    use { 'voldikss/vim-floaterm'}
    use { 'williamboman/nvim-lsp-installer' }
    use { 'luukvbaal/nnn.nvim' }
    use { 'mbbill/undotree' }
    use { 'folke/zen-mode.nvim' }
    use { 'folke/trouble.nvim' }
    use { 'lewis6991/gitsigns.nvim' }

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
 end)

