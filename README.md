# Neovim configuration

# Installing

`git clone git@github.com:safv12/nvim-conf.git ~/.config/nvim`

## Plugins Manager: vim-plug

```sh
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

`:PluginInstall`

## External Dependencies

* `brew install --HEAD universal-ctags/universal-ctags/universal-ctags` \
   https://github.com/universal-ctags/homebrew-universal-ctags
* [Clojure LSP](https://clojure-lsp.io/)

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
