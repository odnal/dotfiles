vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<leader>t", [[:12split term://bash]], {})
vim.keymap.set('t', '<escape><escape>', '<C-\\><C-n>', {})
vim.keymap.set('n', '<space>a', [[:tabnew]], {})
vim.keymap.set('n', '<space>q', [[:tabclose]], {})
vim.keymap.set('n', '<tab>', [[:tabnext]], {})
vim.keymap.set('n', '<space><tab>', [[:tabnext -]], {})
vim.keymap.set('v', '<leader>y', '"+y', {}) -- E.g: <leader>yy will yank current line to os clipboard
vim.keymap.set('v', '<leader>Y', '"+y$', {})
vim.keymap.set('n', '<space>m', [[:Man ]], {})
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
--vim.keymap.set("n", "J", "mzJ`z")


