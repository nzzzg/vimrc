#!/bin/sh
set -e

cd ~/.vim_runtime

echo '
set modeline
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set nonumber
set cmdheight=1
set laststatus=2

set nu
set mouse=v

set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
