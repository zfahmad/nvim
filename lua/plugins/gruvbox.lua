return {
    'ellisonleao/gruvbox.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        -- vim.g.gruvbox_material_enable_italic = true
        vim.cmd.colorscheme('gruvbox')
    end
}
