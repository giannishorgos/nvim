local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set('n', '<leader>a', mark.add_file)
vim.keymap.set('n', 'ze', ui.toggle_quick_menu)

vim.keymap.set('n', 'zh', function() ui.nav_file(1) end)
vim.keymap.set('n', 'zj', function() ui.nav_file(2) end)
vim.keymap.set('n', 'zl', function() ui.nav_file(3) end)
vim.keymap.set('n', 'zt', function() ui.nav_file(4) end)
vim.keymap.set('n', 'zn', function() ui.nav_next() end)
vim.keymap.set('n', 'zp', function() ui.nav_prev() end)
