# Neovim configuration

# Installing

`git clone git@github.com:safv12/nvim-conf.git ~/.config/nvim`

## Plugins Manager: [Packer](https://github.com/wbthomason/packer.nvim)

```sh
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

`:PackerSync`

## External Dependencies

* `brew install --HEAD universal-ctags/universal-ctags/universal-ctags` \
   https://github.com/universal-ctags/homebrew-universal-ctags
* [Clojure LSP](https://clojure-lsp.io/)

## Checking setup

`:checkhealth`
`:PackerStatus`

## Other configurations

In order to support `reload-all` and `reload-chaged` mappings of conjure it's
necessary to configure the next plugins in `.lein/profiles.clj`

```
{:plugins [[cider/cider-nrepl "0.25.3"]
           [refactor-nrepl "2.5.0"]]}
```
