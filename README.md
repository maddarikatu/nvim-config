# Neovim configuration
Using [wbthomason's packer.nvim](https://github.com/wbthomason/packer.nvim).

## Plugins
* [Comment.nvim](https://github.com/numToStr/Comment.nvim)
* [vimwiki](https://github.com/vimwiki/vimwiki)
* [vim-airline](https://github.com/vim-airline/vim-airline) and [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
* [apha-nvim](https://github.com/goolord/alpha-nvim)
* [autoclose.nvim](https://github.com/m4xshen/autoclose.nvim)
* [barbar.nvim](https://github.com/romgrk/barbar.nvim)
* [lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim)
* [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
* [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
* [tagbar](https://github.com/preservim/tagbar)
* [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

## Themes
* [nord.nvim](https://github.com/shaunsingh/nord.nvim)
* [palenight.nvim](https://github.com/drewtempelmeyer/palenight.vim)

## Bootstrapping
Put this inside `init.lua` before installing:
```lua
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
```
