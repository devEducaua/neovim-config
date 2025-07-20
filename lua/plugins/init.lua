return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        },
        config = require("plugins.config.lsp")
    },

    {
        "williamboman/mason.nvim",
        config = require("plugins.config.mason")
    },

    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "L3MON4D3/LuaSnip",
        },
        config = require("plugins.config.cmp")
    },

    { 'numToStr/Comment.nvim' },

    { 'windwp/nvim-autopairs', opts = {} },

    -- example lazy.nvim install setup
    {
        "slugbyte/lackluster.nvim",
        lazy = false,
        priority = 1000,
    },

    {
      'akinsho/toggleterm.nvim',
       version = "*",
       config = require("plugins.config.toggleterm")
    },

    {
        "nvim-telescope/telescope.nvim",
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = require("plugins.config.telescope")
    },

    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        event = { "BufReadPost", "BufNewFile" },
        config = require("plugins.config.treesitter")
    },

    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        ---@module "ibl"
        ---@type ibl.config
        config = require("plugins.config.ibl")
    },

    {
        "L3MON4D3/LuaSnip",
        dependencies = { "rafamadriz/friendly-snippets" },
        config = function ()
            require("luasnip.loaders.from_vscode").lazy_load()
        end
    },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = require("plugins.config.lualine")
    },

    {
        "xiyaowong/transparent.nvim",
        config = require("plugins.config.transparent")
    },

    {
        'stevearc/oil.nvim',
        ---@module 'oil'
        ---@type oil.SetupOpts
        dependencies = { "nvim-tree/nvim-web-devicons" },
        lazy = false,
        config = function ()
            require("oil").setup({
                default_file_explorer = true
            })
        end
    }
}
