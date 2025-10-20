vim.g.compile_mode = {
    --same_window_errors = true,
    baleia_setup = true,
    default_command = "make -k",
}

local function with_count(cmd, default)
  return function()
    local default_count = type(default) == "function" and default() or default
    local count = vim.v.count == 0 and default_count or vim.v.count
    return "<cmd>" .. count .. cmd .. "<cr>"
  end
end

vim.keymap.set('n', '<leader>cc', "<cmd>Compile<cr>", { desc = "Compile" })
vim.keymap.set('n', '<leader>rr', "<cmd>Recompile<cr>", { desc = "Recompile" })
vim.keymap.set("n", "<M-p>", with_count("PrevError", 1), { expr = true, desc = "Previous Error" })
vim.keymap.set("n", "<M-n>", with_count("NextError", 1), { expr = true, desc = "Next Error" })
