# Introduction
This is my neovim-config, it is comfy for me. 
I use Lazy for the plugins, below has a list of all plugins and the build instructions.

---
![Screenshot](lua/config/screenshot.png)
---

# How to Build
if you are on Linux
1. clone the repository in the ~/.config/
```Shell
git clone https://github.com/devEducaua/neovim-config

```
2. Change the name of the folder
```Shell
mv ~/.config/neovim-config ~/.config/nvim

```
3. Run nvim on the terminal
```Shell
nvim
```
4. Inside of the nvim run
```Shell
:Lazy
```

# Plugins
## Main Plugins

| function | plugin |
| -------- | ------ |
| filetree | [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) |
| autocompletion | [cmp](https://github.com/hrsh7th/nvim-cmp) |
| lsp | [mason](https://github.com/mason-org/mason.nvim) |
| fuzzyfinder | [telescope](https://github.com/nvim-telescope/telescope.nvim) |
| terminal | [toggleterm](https://github.com/akinsho/toggleterm.nvim) |

## Secondary plugins
- [alpha](https://github.com/goolord/alpha-nvim)
- [autopairs](https://github.com/windwp/nvim-autopairs)
- [comment](https://github.com/numToStr/Comment.nvim)
- [luanine](https://github.com/nvim-lualine/lualine.nvim/)
- [luasnip](https://github.com/L3MON4D3/LuaSnip)
- [neoscroll](https://github.com/karb94/neoscroll.nvim)
- [noice](https://github.com/folke/noice.nvim)
- [smear](https://github.com/sphamba/smear-cursor.nvim)
- [surround](https://github.com/kylechui/nvim-surround)
- [themify](https://github.com/LmanTW/themify.nvim)
- [transparent](https://github.com/xiyaowong/transparent.nvim)
- [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
