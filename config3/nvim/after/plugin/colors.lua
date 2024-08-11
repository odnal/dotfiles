function ColorMyPencils(color)
    color = color or "gruber-darker"
    local opts = {
        italic = {
            strings = false,
            comments = false,
            operators = false,
            folds = false,
        }
    }
    require(color).setup(opts)
    vim.cmd.colorscheme(color)
    --vim.opt.background = dark
    vim.cmd([[hi Normal ctermbg=none guibg=none]])
    vim.cmd([[set signcolumn=no]])
    vim.cmd([[hi CursorLine term=bold cterm=bold guibg=none]])
    --vim.api.nvim_set_hl(0, "Normal", {ctermbg = "none"})
    --vim.api.nvim_set_hl(0, "Normal", {guibg = "none"})
end

ColorMyPencils()
