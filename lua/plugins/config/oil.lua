return function ()
    require("oil").setup({
        default_file_explorer = true,
        skip_confirm_for_simple_edits = true,
        watch_for_changes = true,
        columns = {
            "icon",
            "type",
            "permissions",
            "size",
            "mtime",
        },
        keymaps = {
            ["g."] = { "actions.toggle_hidden", mode = "n" },
        },
        view_options = {
            show_hidden = true,
        }
    })
end
