# vimconfig
Nvim config with tmux

2 files config for tmux and neovim
- tmux.conf
- init.vim

# Mac setup
## Install TPM for Tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

## Install python 2 3

- pip2 install pynvim
- pip3 install pynvim

- pip2 install --upgrade pynvim
- pip3 install --upgrade pynvim

## Install YouCompleteMe

- brew install cmake python go nodejs
- cd ~/.config/nvim/plugged/youcompleteme
- ./install.py --clangd-completer

## Ruby

- gem install solargraph
- gem install neovim

## Install fish

- Install fish shell
- Install Oh my fish

- Set RVM for fish shell
  curl -L --create-dirs -o ~/.config/fish/functions/rvm.fish https://raw.github.com/lunks/fish-nuggets/master/functions/rvm.fish

- Set fish shell as defaul shell
  chsh -s $(which fish)
