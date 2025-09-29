return {
    {
        'stevearc/oil.nvim',
        ---@module 'oil'
        ---@type oil.SetupOpts
        dependencies = { "nvim-tree/nvim-web-devicons" },
        lazy = false,
        config = require("plugins.config.oil"),
    },

    {
        "nvim-telescope/telescope.nvim",
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = require("plugins.config.telescope")
    },

    {
        dir = "~/proj/oradark.nvim/", -- "devEducaua/oradark.nvim",
    },

    {
        "williamboman/mason.nvim",
        config = require("plugins.config.mason")
    },

    {
        "hrsh7th/nvim-cmp",
        enabled = false,
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

    { "L3MON4D3/LuaSnip" },

    { 'numToStr/Comment.nvim' },

    { 'windwp/nvim-autopairs', opts = {} },

    {
        "nvim-treesitter/nvim-treesitter",
        -- enabled = false,
        build = ":TSUpdate",
        event = { "BufReadPost", "BufNewFile" },
        config = require("plugins.config.treesitter")
    }
}
