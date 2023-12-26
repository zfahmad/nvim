-- [[ keys.lua ]]

local map = vim.api.nvim_set_keymap

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
