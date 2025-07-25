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
            "saadparwaiz1/cmp_luasnip",
            "hrsh7th/cmp-path",
            "L3MON4D3/LuaSnip",
            "rafamadriz/friendly-snippets"
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
        config = require("plugins.config.oil")
    }
}
