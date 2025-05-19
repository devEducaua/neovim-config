return {
    'dinhhuy258/sfm.nvim',
    dependencies = {
            "dinhhuy258/sfm-git.nvim",
    },
    config = function()
        require("sfm").setup({
            view = {
                side = "right"
            }
        })
        vim.api.nvim_set_keymap('n', '<A-r>', ':SFMToggle<CR>', { noremap = true, silent = true })
    end
}
