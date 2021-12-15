# .vimrc
Continuing the evolution of vim

Want to use Neovim?

No problem, just add these lines to your ~/.config/nvim/init.vim file

```
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc
```
