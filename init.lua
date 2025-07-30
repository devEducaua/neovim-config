require("config.lazy")
require("config.keymaps")
require("config.snippets")

local cmd = vim.cmd
local o = vim.o
local opt = vim.opt

o.number = true
o.relativenumber = true
o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 4
o.expandtab = true

o.showmode = true
o.cmdheight = 0

cmd("set termguicolors")
cmd("syntax enable")
cmd("colorscheme oradark")
cmd [[ highlight Whitespace guifg=#1e1e1e ]]
cmd [[ highlight NonText guifg=#1e1e1e ]]

opt.list = true
opt.listchars = {
    space = "•",
    tab = "▸ ",
    extends = '❯',
    precedes = '❮',
    nbsp = '␣',
}

opt.fillchars = { eob = " ", vert = " "}

vim.api.nvim_create_autocmd('TermOpen', {
    group = vim.api.nvim_create_augroup('custom-term-open', { clear = true }),
    callback = function ()
        o.number = false
        o.relativenumber = false
    end
})
