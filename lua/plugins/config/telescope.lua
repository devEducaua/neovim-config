return function ()
    -- vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none", fg = "none" })
    -- vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "none", fg = "none" })
    -- vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = "none", fg = "none" })

    require("telescope").setup({
        file_ignore_patterns = { "node_modules", ".git" },
        defaults = {
            border = false,
            prompt_position = "bottom",
            layout_strategy = 'bottom_pane',
            sorting_strategy = 'ascending',
            results_title = false,
            layout_config = {
                width = 1,
                height = 0.15,
                preview_width = 0
            },
            mappings = {
                i = {
                    vim.api.nvim_set_keymap('n', '<A-f>', "<cmd>Telescope find_files<cr>", { noremap = true, silent = true}),
                    vim.api.nvim_set_keymap('n', '<A-r>', "<cmd>Telescope oldfiles<cr>", { noremap = true, silent = true}),
                    vim.api.nvim_set_keymap('n', '<A-t>', "<cmd>Telescope colorscheme<cr>", { noremap = true, silent = true}),
                    vim.api.nvim_set_keymap('n', '<A-h>', "<cmd>Telescope help_tags<cr>", { noremap = true, silent = true})
                }
            }
        }
    })
end
