-- [[ keys.lua ]]

local map = vim.api.nvim_set_keymap

map('n', '<Leader>n', [[:NnnExplorer]], {})
map('n', '<Leader>np', [[:NnnPicker]], {})
map('n', ',l', [[:IndentLinesToggle]], {})
map('n', '<Leader>t', [[:TagbarToggle]], {})
map('n', 'ff', [[:Telescope find_files]], {})
map('n', '<C-t>', [[:FloatermNew --position=bottomleft --height=0.4 --width=0.5]], {})
map('n', '<Leader>m', [[:make]], {})
map('n', '<Leader>cl', [[:set conceallevel=0]], {})
