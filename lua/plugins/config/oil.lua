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
            [","] = { "actions.cd", mode = "n" },
            ["gr"] = {
                desc = "run executable",
                callback = function ()
                    local file = require("oil").get_cursor_entry().name
                    vim.cmd(":Cmd ./" .. file)
                    vim.cmd("startinsert")
                end
            },
            ["gG"] = {
                desc = "stage on git",
                callback = function ()
                    local file = require("oil").get_cursor_entry().name
                    vim.cmd(":Cmd git add " .. file)
                end
            }
        },
        view_options = {
            show_hidden = true,
        }
    })
end
