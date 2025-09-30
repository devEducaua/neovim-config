local function bootstrap_pckr()
    local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"
    --print(pckr_path)
  
    if not (vim.uv or vim.loop).fs_stat(pckr_path) then
        vim.fn.system({
            'git',
            'clone',
            "--filter=blob:none",
            'https://github.com/lewis6991/pckr.nvim',
            pckr_path
        })
    end
  
    vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

local pckr = require("pckr")

pckr.add{
    "~/proj/oradark.nvim",

    "windwp/nvim-autopairs",
    "numToStr/Comment.nvim",

    {
        "L3MON4D3/LuaSnip",
        config = require("configs.luasnip")
    },

    {
        "saghen/blink.cmp",
        requires = { "rafamadriz/friendly-snippets" },
        config = require("configs.blink")
    },

    {
        "stevearc/oil.nvim",
        ---@module 'oil'
        ---@type oil.SetupOpts
        requires = { "nvim-tree/nvim-web-devicons" },
        config = require("configs.oil")
    },

    {
        "nvim-telescope/telescope.nvim",
        requires = { 'nvim-lua/plenary.nvim' },
        config = require("configs.telescope")
    },

    {
        "williamboman/mason.nvim",
        config = require("configs.mason")
    },

    {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = require("configs.treesitter")
    }
}
