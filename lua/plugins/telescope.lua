return {
    'nvim-telescope/telescope.nvim',
    tag = "0.1.5",
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local wk = require("which-key")
        wk.register({
            ["<leader>"] = {
                f = {
                    name = "Find",
                    f = { "<cmd>Telescope find_files<cr>", "Find files" },
                    g = { "<cmd>Telescope live_grep<cr>", "Live grep" },
                    h = { "<cmd>Telescope help_tags<cr>", "Search help tags" },
                    s = { "<cmd>Telescope grep_string<cr>", "Grep string" },
                    b = { "<cmd>Telescope buffers<cr>", "List buffers" }
                }
            }
        })
    end
}
