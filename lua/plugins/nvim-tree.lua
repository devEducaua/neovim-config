return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    -- local HEIGHT_RATIO = 0.9  -- You can change this
    -- local WIDTH_RATIO = 0.2   -- You can change this too

    require('nvim-tree').setup({
        view = {
				centralize_selection = true,
				adaptive_size = false,
				side = "right",
				preserve_window_proportions = true,
				width = {
					max = -1,
				},
				float = {
					enable = true,
					quit_on_focus_loss = false,
					open_win_config = function()
						return {
							row = 0,
							width = 30,
							border = "none",
							relative = "editor",
							col = vim.o.columns,
							height = vim.o.lines - 5,
						}
					end,
				},
			},
    })
    vim.api.nvim_set_keymap('n', '<C-e>', ':NvimTreeFocus<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
  --   vim.api.nvim_create_autocmd("BufEnter", {
  --       nested = true,
  --       callback = function()
  --       if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
  --           vim.cmd "quit"
  --       end
  -- end
    -- })
  end,
}
