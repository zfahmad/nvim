
-- -- IMPORTS
-- require('plug')
-- require('vars')
-- require('opts')
-- require('keys')
-- require("mason").setup {}
-- require("mason-lspconfig").setup {}
-- require('lsp_config')
-- require('lua_lsp_config')
-- require('dap_init')
-- require('dap_keymaps')
--
-- -- PLUGINS
-- require('dressing').setup()
-- require('goto-preview').setup({
--     default_mappings = true
-- })
-- require("noice").setup({
--   lsp = {
--     -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
--         progress = {
--             enabled = true
--         },
--     override = {
--       ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
--       ["vim.lsp.util.stylize_markdown"] = true,
--       ["cmp.entry.get_documentation"] = true,
--     },
--   },
--   -- you can enable a preset for easier configuration
--   presets = {
--     bottom_search = true, -- use a classic bottom cmdline for search
--     command_palette = true, -- position the cmdline and popupmenu together
--     long_message_to_split = true, -- long messages will be sent to a split
--     inc_rename = false, -- enables an input dialog for inc-rename.nvim
--     lsp_doc_border = false, -- add a border to hover docs and signature help
--   },
-- })
-- require('zen-mode').setup()
-- require('nvim-web-devicons').setup()
-- require('gitsigns').setup()
-- require('nvim-cmp')
-- require('nvim-surround').setup()
-- require('treesj').setup()
-- require('nnn').setup ({
--     explorer = {
--         cmd = "nnn -G",
--         width = 30
--     },
--     picker = {
--         style = {
--             border = "rounded"
--         }
--     }
-- })
-- require('lualine').setup ({
--     options = {
--         theme = 'catppuccin',
--         component_separators = { left = '', right = '' },
--         section_separators = { left = '', right = '' },
--     }
-- })
-- require('Comment').setup {}
-- require("ibl").setup {}
-- -- require('nvim-autopairs').setup {}
-- require('nvim-treesitter.configs').setup {
--     },
-- }
--
-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("opts")
require("lazy").setup("plugins")
