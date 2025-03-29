return {
    'dinhhuy258/sfm.nvim',
    requires = {
         { "dinhhuy258/sfm-git.nvim" },
    },
    config = function()
        require("sfm").setup()
            vim.api.nvim_set_keymap('n', '<A-b>', ':SFMToggle<CR>', { noremap = true, silent = true })
    end
}
