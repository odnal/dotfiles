require("compile-mode").setup({
    config = function()
      vim.g.compile_mode = {
        same_window_errors = true,
        baleia_setup = true,
        default_command = "make -k",
      }
    end
})
