return {
    'nvim-telescope/telescope.nvim',
    tag = "0.1.5",
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require("telescope.builtin")
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "telescope: find_files" })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "telescope: live_grep" })
        vim.keymap.set('n', '<leader>gs', builtin.grep_string, { desc = "telescope: grep_string" })
        vim.keymap.set('n', '<leader>sb', builtin.buffers, { desc = "telescope: buffers" })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "telescope: help_tags" })
    end
}
