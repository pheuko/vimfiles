# Vimfiles

Vim files with Vundle

## Install

```
git clone git@github.com:pheuko/vimfiles.git ~/.vim
```

Symlink vimrc and gvimrc

```zsh
ln -s vimrc ~/.vimrc
```

Install Vundle

```zsh
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

```
:PluginInstall
```

## Extras

### Command-t:

```zsh
cd ~/.vim/bundle/Command-T && ruby extconf.rb
```

```zsh
make
```

### YouCompleteMe

```zsh
cd ~/.vim/bundle/YouCompleteMe && ./install.sh
```

#### With TernJS

```zsh
cd ~/.vim/bundle/tern_for_vim && npm install
```
