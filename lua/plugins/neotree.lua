return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    lazy = false,
    ---@module "neo-tree"
    ---@type neotree.Config?

    config = function ()
        require("neo-tree").setup({
            enable_git_status = false,
            enable_diagnostics = false,
            close_if_last_window = true,
            popup_border_style = "NC",

            name = {
                trailing_slash = true,
                use_git_status_colors = false,
                highlight = "NeoTreeFileName",
            },

            window = {
                position = "right",
                width = 30
            },

            indent = {
                indent_size = 2,
                padding = 1,
            },

            git_status = {
                symbols = {
                  -- Change type
                  added = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
                  modified = "", -- or "", but this is redundant info if you use git_status_colors on the name
                  deleted = "✖", -- this can only be used in the git_status source
                  renamed = "󰁕", -- this can only be used in the git_status source
                  -- Status type
                  untracked = "",
                  ignored = " ",
                  unstaged = "-",
                  staged = "+",
                  conflict = " ", --"",
                },
            },

            filesystem = {
                filtered_items = {
                    hide_dotfiles = false,
                    hide_gitignored = false,
                }
            }
        })

        -- vim.api.nvim_set_keymap('n', '<A-b>', ':Neotree<CR>', { noremap = true, silent = true })
        vim.keymap.set("n", "<A-b>", "<Cmd>Neotree reveal<CR>")
    end
}
