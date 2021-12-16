# .vimrc
A novice guide to setting up a .vimrc file in Vim/Neovim

While this guide focuses primarily on Vim, it should work fine in Neovim. Take note of the below steps.

Neovim:

Add these lines to your ~/.config/nvim/init.vim file. If you can't find it, make one!
Everything should carry over including themes and plugins. But beware as some plugins may not be cross-compatible!

```
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc
```

NOTE:
There are problems in Neovim that may clash with the .vimrc configuration.
Using bangs ```:!``` doesn't result in a usable interactive terminal unlike Vim.
This hopefully will be implemented in a future release. Keep an eye on: https://github.com/neovim/neovim/issues/1496
For now, using ```:term``` will result in a terminal output but beware that is not interactive!


The file is origanised in order of increasing complexity to implement (for a new user). It is divided into catagories to make it easier to read.


Plugins:

This guide is using VimPlug. To install it:

Vim: `

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
    
    
Neovim: 

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'```
```
For more information, refer to https://github.com/junegunn/vim-plug


To install COC:

  ```
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  ```

For more information, refer to https://github.com/neoclide/coc.nvim


To install COC extensions:

C/C++:

Install Clangd (Ubuntu):
  ```
  sudo apt install clangd
  ```
 
 Install the extension (do this in a file opened in Vim/Neovim)
 ```
 :CocInstall coc-clangd
 ```
 If that doesn't work, try:
 ```
 :CocCommand clangd.install
 ```
 If that doesn't work, try:
 ```
 sudo npm i --global coc-clangd
 ```
 
 For more informatin, refer to https://github.com/clangd/coc-clangd and https://github.com/clangd/coc-clangd/issues/61
 

