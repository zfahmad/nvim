-- [[ keys.lua ]]

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent =true }

map('n', '<Leader>n', [[:NnnExplorer]], {})
map('n', '<Leader>np', [[:NnnPicker]], {})
map('n', '<Leader>l', [[:IndentLinesToggle]], {})
map('n', '<Leader>t', [[:TagbarToggle]], {})
map('n', '<Leader>ff', [[:Telescope find_files]], {})
map('n', '<Leader>g', [[:Telescope live_grep]], {})
map('n', '<Leader>sb', [[:Telescope buffers]], {})
map('n', '<C-t>', [[:FloatermNew --position=bottomleft --height=0.4 --width=0.5]], {})
map('n', '<Leader>m', [[:make]], {})
map('n', '<Leader>cl', [[:set conceallevel=0]], {})

map('n', '<M-j>', '<C-w>j', opts)
map('n', '<M-k>', '<C-w>k', opts)
map('n', '<M-h>', '<C-w>h', opts)
map('n', '<M-l>', '<C-w>l', opts)

map('n', '<C-u>', '<C-u>zz', {})
map('n', '<C-d>', '<C-d>zz', {})
map('n', 'n', 'nzz', {})


