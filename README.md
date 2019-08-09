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

Install dependencies

### xbuild
`sudo apt-get install -y mono-xbuild`

### go
```bash
wget https://dl.google.com/go/go1.12.7.linux-amd64.tar.gz
sudo tar -xvf go1.12.7.linux-amd64.tar.gz
sudo mv go /usr/local
echo export GOROOT=/usr/local/go >> ~/.zshrc
```
Paste at the end of .zshrc `export PATH=$GOROOT/bin:$PATH`

### node & npm
```
sudo apt-get install curl
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install nodejs
```

### tsserver
```
sudo npm install -g typescript
```

### rustc & cargo
```
curl https://sh.rustup.rs -sSf | sh
```
Paste at the end of .zshrc `export PATH="$HOME/.cargo/bin:$PATH"`

### Then install plugin with

    sudo apt install cmake
    sudo apt-get install build-essential checkinstall
    sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev
    sudo wget https://www.python.org/ftp/python/2.7.16/Python-2.7.16.tgz
    sudo tar xzf Python-2.7.16.tgz
    
    cd ~/.vim/bundle/YouCompleteMe
    ./install.py --all
