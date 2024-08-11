local builtin = require("compile-mode")
builtin.setup({
    config = function()
      vim.g.compile_mode = {
        same_window_errors = true,
        baleia_setup = true,
        default_command = "make -k",
      }
    end,
    --vim.keymap.set('n', '<leader>rr', "<cmd>Recompile<cr>", { desc = "Recompile" })
})

