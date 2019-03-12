# My vim configuration using Vundle

## Installation

Clone the repo in your home folder

    cd ~
    git clone https://github.com/dmolinae/vimconfig ~/.vim

Add a link to your `.vimrc` file

    ln -sf ~/.vim/.vimrc ~/.vimrc

Install vundle

    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

That's it, now you can enter vim and type `:PluginInstall` to install all the plugins.

## Aditional installation of YouCompleteMe

Install dependencies first:

+ xbuild
+ go
+ tsserver
+ node
+ npm
+ rustc
+ cargo

Then install plugin with

    cd ~/.vim/bundle/YouCompleteMe
    ./install.py --all
