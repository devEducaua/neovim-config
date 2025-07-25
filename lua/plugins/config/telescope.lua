return function ()
    require("telescope").setup({
        file_ignore_patterns = { "node_modules" },
        -- file_ignore_patterns = { "./node_modules/*", "node_modules", "^node_modules/*", "node_modules/*" },
        defaults = {
            layout_config = {
                vertical = { width = 0.5 }
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
