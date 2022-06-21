<h1 align="center">
  <img
    src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png"
    height="30"
    width="0px"
  />
  🎨 zephyr-nvim
  <img
    src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png"
    height="30"
    width="0px"
  />
</h1>

<p align="center">
  <a href="https://github.com/glepnir/zephyr-nvim/stargazers">
    <img
      alt="Stargazers"
      src="https://img.shields.io/github/stars/glepnir/zephyr-nvim?style=for-the-badge&logo=starship&color=c678dd&logoColor=d9e0ee&labelColor=282a36"
    />
  </a>
  <a href="https://github.com/glepnir/zephyr-nvim/issues">
    <img
      alt="Issues"
      src="https://img.shields.io/github/issues/glepnir/zephyr-nvim?style=for-the-badge&logo=gitbook&color=f0c062&logoColor=d9e0ee&labelColor=282a36"
    />
  </a>
  <a href="https://github.com/glepnir/zephyr-nvim/contributors">
    <img
      alt="Contributors"
      src="https://img.shields.io/github/contributors/glepnir/zephyr-nvim?style=for-the-badge&logo=opensourceinitiative&color=abcf84&logoColor=d9e0ee&labelColor=282a36"
    />
  </a>
</p>

<p align="center">
  <img src="https://user-images.githubusercontent.com/41671631/172047114-58deb5a9-f67b-400b-bace-2982bf901ff6.png"
  height = "40%"
  widht = "40%"
  />
</p>

&nbsp;

## 💭 About

A dark neovim colorscheme written in lua and syntax based on
[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter).

## ⚙️ Setup

- [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'glepnir/zephyr-nvim'
Plug 'nvim-treesitter/nvim-treesitter'
```

- [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use({
  'glepnir/zephyr-nvim',
  requires = { 'nvim-treesitter/nvim-treesitter', opt = true },
})
```

## ▶️ Usage

```vim
colorscheme zephyr
```

or

```lua
lua require('zephyr')
```

```lua
-- Get zephyr color
local zephyr =  require('zephyr').zephyr.yellow/teal/fg/bg
```

&nbsp;

<p align="center">
  <img
    src="https://raw.githubusercontent.com/catppuccin/catppuccin/dev/assets/footers/gray0_ctp_on_line.svg?sanitize=true"
  />
</p>
<p align="center">
  Copyright &copy; 2020-present
  <a href="https://github.com/glepnir" target="_blank">Raphael</a>
</p>
<p align="center">
  <a href="https://github.com/glepnir/zephyr-nvim/blob/master/LICENSE"
    ><img
      src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=d9e0ee&colorA=282a36&colorB=c678dd"
  /></a>
</p>
