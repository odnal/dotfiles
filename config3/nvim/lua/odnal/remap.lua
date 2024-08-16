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

local function with_count(cmd, default)
  return function()
    local default_count = type(default) == "function" and default() or default
    local count = vim.v.count == 0 and default_count or vim.v.count
    return "<cmd>" .. count .. cmd .. "<cr>"
  end
end
vim.keymap.set('n', '<leader>cc', "<cmd>Compile<cr>", { desc = "Compile" })
vim.keymap.set('n', '<leader>rr', "<cmd>Recompile<cr>", { desc = "Recompile" })
vim.keymap.set("n", "<leader>p", with_count("PrevError", 1), { expr = true, desc = "Previous Error" })
vim.keymap.set("n", "<leader>n", with_count("NextError", 1), { expr = true, desc = "Next Error" })

--vim.keymap.set("n", "J", "mzJ`z")


