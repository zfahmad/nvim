-- [[ keys.lua ]]

local map = vim.api.nvim_set_keymap

map('n', '<Leader>n', [[:NvimTreeToggle]], {})
map('n', ',l', [[:IndentLinesToggle]], {})
map('n', '<Leader>t', [[:TagbarToggle]], {})
map('n', 'ff', [[:Telescope find_files]], {})
map('n', '<C-t>', [[:FloatermNew --position=bottomleft --height=0.4 --width=0.5]], {})
