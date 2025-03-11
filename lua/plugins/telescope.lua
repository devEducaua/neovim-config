return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',

    dependencies = { 'nvim-lua/plenary.nvim' },

    config = function()
        require('telescope').setup({
            defaults = {
                layout_config = {
                    vertical = { width = 0.5 }
                },
                mappings = {
                    i = {
                        vim.api.nvim_set_keymap('n', '<A-f>', "<cmd>Telescope find_files<cr>", { noremap = true, silent = true }),
                        vim.api.nvim_set_keymap('n', '<A-g>', "<cmd>Telescope live_grep<cr>", { noremap = true, silent = true }),
                        vim.api.nvim_set_keymap('n', '<A-r>', "<cmd>Telescope oldfiles<cr>", { noremap = true, silent = true }), 
                    }
                }
            }
        })
    end,
}
