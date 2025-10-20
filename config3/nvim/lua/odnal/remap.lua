vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>ps", vim.cmd.Sex)
vim.keymap.set("n", "<leader>s", ":sf ")
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<leader>t", [[:12split term://bash]], {})
vim.keymap.set("n", "<leader>vv", [[:vsplit term://bash]], {})
vim.keymap.set('t', '<escape><escape>', '<C-\\><C-n>', {desc = "Escapes from terminal mode"})
vim.keymap.set('n', '<space>a', [[:tabnew]], {})
vim.keymap.set('n', '<space>q', [[:tabclose]], {})
vim.keymap.set('n', '<space><tab>', [[:tabnext]], {})
vim.keymap.set('v', '<leader>y', '"+y', {desc = "Yank to clipboard"})
vim.keymap.set('v', '<leader>Y', '"+y$', {})
vim.keymap.set('n', '<space>m', [[:Man ]], {})
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
--vim.keymap.set('x', 'y', 'mm"yyp`mj', { noremap = true, silent = true })

vim.keymap.set('n', '<C-n>', "<cmd>cnext<CR>", {desc = "Quickfix cnext"})
vim.keymap.set('n', '<C-p>', "<cmd>cprevious<CR>", {desc = "Quickfix cprev"})



--vim.keymap.set("n", "J", "mzJ`z")


