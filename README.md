# What
This begin with the idea of a minimal config, less lua, less plugins and etc. Less plugins I really like this idea, but less lua, no. I like so much writing my own commands and functions for use. The majority of they are in plugin/ folder.

# How to build

1. clone this repo

```sh
git clone https://github.com/devEducaua/neovim-config.git ~/.config/nvim

```
2. open nvim and run

```nvim
:Lazy
```

# Structure
```
├── init.lua
├── lazy-lock.json
├── lua
│   ├── config
│   │   ├── keymaps.lua
│   │   ├── lazy.lua
│   │   └── snippets.lua
│   └── plugins
│       ├── config
│       │   ├── cmp.lua
│       │   ├── lsp.lua
│       │   ├── lualine.lua
│       │   ├── mason.lua
│       │   ├── oil.lua
│       │   ├── telescope.lua
│       │   ├── transparent.lua
│       │   └── treesitter.lua
│       └── init.lua
├── plugin
│   ├── cmd.lua
│   ├── compile.lua
│   ├── licenses.lua
│   ├── man.lua
│   ├── todo.lua
│   └── zoom.lua
├── PLUGINS.md
└── README.md
```
