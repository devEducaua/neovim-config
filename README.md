# My comfy config
This is minimal config of neovim, I remove all the useless things that I have

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
├── init.lua
├── lazy-lock.json
├── lua
│   ├── config
│   │   ├── keymaps.lua
│   │   └── lazy.lua
│   └── plugins
│       ├── config
│       │   ├── cmp.lua
│       │   ├── ibl.lua
│       │   ├── lsp.lua
│       │   ├── lualine.lua
│       │   ├── mason.lua
│       │   ├── oil.lua
│       │   ├── telescope.lua
│       │   ├── toggleterm.lua
│       │   ├── transparent.lua
│       │   └── treesitter.lua
│       └── init.lua
├── PLUGINS.md
└── README.md

- init.lua has general configurations
- config/ bootstrap the lazy.nvim and set the keymaps
- plugins/
    - plugins.lua install the plugins
    - config/ has the configuration of they
