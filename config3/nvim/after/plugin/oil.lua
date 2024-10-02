require("oil").setup({
    default_file_explorer = true,
    columns = {
        --"icon",
        "permissions",
        "size",
        "mtime",
    },
    view_options = {
        show_hidden = true,  -- Show hidden files
    },
    icons = {
        -- Add your icon configurations here
    },
    use_default_keymaps = true,
})

