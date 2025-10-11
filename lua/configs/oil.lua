local commands = require("commands")

return function ()
    require("oil").setup({
        default_file_explorer = true,
        skip_confirm_for_simple_edits = true,
        watch_for_changes = true,
        view_options = {
            show_hidden = true,
        },
        columns = {
            "icon",
            "type",
            "permissions",
            "size",
            "mtime",
        }, keymaps = {
            ["g."] = { "actions.toggle_hidden", mode = "n" },
            ["g,"] = { "actions.cd", mode = "n" },

            ["<space>l"] = {
                desc = "download template license",
                callback = function ()
                    vim.fn.feedkeys(":License ")
                end
            },

            ["<space>h"] = {
                desc = "pass file to command",
                callback = function ()
                   local name = commands.get_path(require("oil").get_cursor_entry().name)
                   local keys = "q:" .. "iCmd " .. name .. "<esc>Bi"
                   keys = vim.api.nvim_replace_termcodes(keys, true, false, true)
                   vim.api.nvim_feedkeys(keys, 'n', false)
                end
            },

            ["<space>r"] = {
                desc = "run file executables or Makefiles",
                callback = function ()
                    local name = require("oil").get_cursor_entry().name
                    commands.exec_by_name(name)
                end
            },

            ["<space>ga"] = {
                desc = "stage file on git",
                callback = function ()
                    local file = commands.get_path(require("oil").get_cursor_entry().name)
                    vim.fn.feedkeys(":Cmd git add " .. get_path(file), "nt")
                end
            },

            ["<space>grm"] = {
                desc = "remove file from git",
                callback = function ()
                    local file = commands.get_path(require("oil").get_cursor_entry().name)
                    vim.fn.feedkeys(":Cmd git rm " .. get_path(file), "nt")
                end
            },
        },
    })
end
