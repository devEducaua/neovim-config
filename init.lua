require("config.lazy")
require("config.keymaps")

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

cmd("set termguicolors")
cmd("syntax enable")
cmd("colorscheme lackluster-dark")
cmd [[ highlight Whitespace guifg=#1e1e1e ]]
cmd [[ highlight NonText guifg=#1e1e1e ]]

opt.list = true
opt.listchars = { space = "•" }
opt.fillchars = { eob = " ", vert = " "}
