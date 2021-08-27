# Neovim configuration

Inspired by ['roberto/vimfiles'](https://github.com/roberto/vimfiles) repository.

# Installing

`git clone git@github.com:safv12/nvim-conf.git ~/.config/nvim`

I'm using Neovim, for more information:
https://github.com/neovim/neovim/wiki/Installing-Neovim

## Plugins Manager: vim-plug

```sh
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

`:PluginInstall`

## External Dependencies

* `brew install --HEAD universal-ctags/universal-ctags/universal-ctags` \
   https://github.com/universal-ctags/homebrew-universal-ctags

## Checking setup

`:checkhealth`
`:PlugStatus`

## Other configurations

In order to support `reload-all` and `reload-chaged` mappings of conjure it's
necessary to configure the next plugins in `.lein/profiles.clj`

```
{:plugins [[cider/cider-nrepl "0.25.3"]
           [refactor-nrepl "2.5.0"]]}
```
