local function getFullPath(file)
    local dir = require("oil").get_current_dir(vim.api.nvim_get_current_buf())
    local temp_path = dir .. "/" .. file
    local full_path = string.gsub(temp_path, "//", "/")
    return full_path
end

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
                    vim.fn.feedkeys(":Cmd " .. getFullPath(file), "nt")
                end
            },
            ["<space>b"] = {
                desc = "compile",
                callback = function ()
                    local name = require("oil").get_cursor_entry().name
                    print(name)
                    vim.cmd(":Compile " .. name)
                end
            },

            ["<space>r"] = {
                desc = "run file executables or Makefiles",
                callback = function ()
                    local name = require("oil").get_cursor_entry().name
                    if (name == "Makefile") then
                        vim.cmd(":Cmd make")
                    else
                        vim.cmd(":Cmd " .. getFullPath(name))
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

            ["<space>n"] = {
                desc = "gets the file name",
                callback = function ()
                    local file = require("oil").get_cursor_entry().name
                    print(file)
                end
            },

            ["<space>a"] = {
                desc = "stage on git",
                callback = function ()
                    local file = require("oil").get_cursor_entry().name
                    vim.fn.feedkeys(":Cmd git add " .. getFullPath(file), "nt")
                end
            },
        },
        view_options = {
            show_hidden = true,
        }
    })
end
