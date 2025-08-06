local function getPath(file)
    local dir = require("oil").get_current_dir(vim.api.nvim_get_current_buf())
    local temp_path = dir .. "/" .. file
    local full_path = string.gsub(temp_path, "//", "/")

    local pwd = vim.fn.getcwd()
    local local_path = string.gsub(full_path, pwd .. "/", "")

    return local_path
end

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
        },
        keymaps = {
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
                    local file = require("oil").get_cursor_entry().name
                    vim.fn.feedkeys(":Cmd " .. getPath(file), "nt")
                end
            },

            ["<space>ca"] = {
                desc = "cat the file",
                callback = function ()
                    local file = require("oil").get_cursor_entry().name
                    vim.cmd(":Cmd cat " .. getPath(file))
                end
            },

            ["<space>r"] = {
                desc = "run file executables or Makefiles",
                callback = function ()
                    local name = require("oil").get_cursor_entry().name
                    if (name == "Makefile") then
                        vim.cmd(":Cmd make")
                    else
                        vim.cmd(":Cmd ./" .. getPath(name))
                    end
                end
            },

            ["<space>m"] = {
                desc = "run Makefiles with params",
                callback = function ()
                    local file = require("oil").get_cursor_entry().name
                    if (file == "Makefile") then
                        vim.fn.feedkeys(":Cmd make ", "nt")
                    end
                end
            },

            ["<space>ga"] = {
                desc = "stage file on git",
                callback = function ()
                    local file = require("oil").get_cursor_entry().name
                    vim.fn.feedkeys(":Cmd git add " .. getPath(file), "nt")
                end
            },

            ["<space>grm"] = {
                desc = "remove file from git",
                callback = function ()
                    local file = require("oil").get_cursor_entry().name
                    vim.fn.feedkeys(":Cmd git rm " .. getPath(file), "nt")
                end
            },
        },
    })
end
