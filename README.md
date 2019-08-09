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

Install dependencies first

### xbuild
`sudo apt-get install -y mono-xbuild`

### go
```bash
wget https://dl.google.com/go/go1.12.7.linux-amd64.tar.gz
sudo tar -xvf go1.12.7.linux-amd64.tar.gz
sudo mv go /usr/local
echo export GOROOT=/usr/local/go >> ~/.zshrc
echo export PATH=$GOROOT/bin:$PATH >> ~/.zshrc
```

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
echo export PATH="$HOME/.cargo/bin:$PATH" >> ~/.zshrc
```

Then install plugin with

    cd ~/.vim/bundle/YouCompleteMe
    ./install.py --all
