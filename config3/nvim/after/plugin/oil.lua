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
    constrain_cursor = "name",

    vim.keymap.set("n", "<leader>nd", function ()
        vim.ui.input({prompt = "Creating directory: "}, function (dir)
            if dir and dir ~= "" then
                vim.fn.mkdir(dir, "p")
                vim.cmd("edit")
            end
        end)
    end, { desc = "Create directory in Oil" }),

    vim.keymap.set("n", "<leader>nf", function ()
        vim.ui.input({prompt = "Creating file: "}, function (file)
            if file and file ~= "" then
                vim.fn.writefile({}, file)
                vim.cmd("edit")
            end
        end)
    end, { desc = "Create file in Oil" })
})

