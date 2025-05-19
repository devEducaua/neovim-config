return {
  'lmantw/themify.nvim',
  lazy = false,
  priority = 999,

  config = function()
        require('themify').setup({

            "nyoom-engineering/oxocarbon.nvim",

            "vague2k/vague.nvim",

            'kdheepak/monochrome.nvim',

            "rebelot/kanagawa.nvim",

            {
                  "xero/evangelion.nvim",
                  lazy = false,
                  priority = 1000,
            },

            {
                "rose-pine/neovim",
                name = "rose-pine"
            },

            {
                "slugbyte/lackluster.nvim",
                lazy = false,
                priority = 1000,
            },

            {
                'olivercederborg/poimandres.nvim',
                lazy = false,
                priority = 1000,
            },

            -- 'rockerBOO/boo-colorscheme-nvim',
            {
                "ellisonleao/gruvbox.nvim",
                priority = 1000,
                config = true
            },
            {
                "catppuccin/nvim",
                name = "catppuccin",
                priority = 1000 
            }

        })
        vim.api.nvim_set_keymap("n", "<A-t>", ":Themify<CR>", { noremap = true, silent = true})
  end
}
