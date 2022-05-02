# Build a comfortable development enviroment

## Programming Languages support:

- Golang
- Ruby
- NodeJS/Typescript

## Dotfiles

Tools: NeoVim, Tmux

- Files config:
  - tmux.conf
  - init.vim
  - ~/.config/fish

## Install Tmux and config TPM 
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

- Theme: NordTheme

## Install python 2 3

- pip2 install pynvim
- pip3 install pynvim

- pip2 install --upgrade pynvim
- pip3 install --upgrade pynvim

## LSP Ruby

- Install gem for Ruby LSP

  - gem install neovim
  - gem install solargraph

## LSP Golang

- Install gopls for lsp

## LSP Typescript

- Install packages:
  - npm install -g typescript typescript-language-server eslint prettier
  - npm install -g typescript-language-server

## Install fish

- Install fish shell
- Install Oh my fish
  
  - Plugin: z ( for directories jumps)
  - Plugin: weather ( optional)
  - Theme: bobthefish

- Set RVM for fish shell
  curl -L --create-dirs -o ~/.config/fish/functions/rvm.fish https://raw.github.com/lunks/fish-nuggets/master/functions/rvm.fish

- Set fish shell as defaul shell
  chsh -s $(which fish)

## Searching and Terminal tools

- Install ripgrep search.
- Install ctags build for indexing files.
- Install exa (alternative for ls).
- Install z (directories jumps)
- Install peco for searching.
- Install asdf (package management for multiple programming language: Golang, nodejs, Ruby, Rust).
- Install xclip for clipboard management
- Install lazygit for CLI git tool (alternative for tig).

## KeyBindings CheatSheet

Using alias for key shortcut
### Tmux
- Tmux prefix: `
- Open new window: Prefix + c
- Split panel vertical/horizontal: Prefix + |, Prefix + -
- Close current window/panel: Prefix + x
- Close all window and panel inside: Prefix + &
- Switch between window: Prefix + n/ Prefix + p
- Panel navigation (like vim): Prefix + (h/j/k/l)
- Switch session: Prefix + s
- Choose session/panel/window for navigating: Prefix + w
- Copy/paste in tmux visual mode:
  - Prefix + [ to enter visual mode
  - Select by <Space> then <Enter> to coppy (navigate like vim)
  - Prefix + ] to paste

### Nvim

<Leader> key map to <,>

- Using Telescope and ripgrep, ack, fzf fuzzy search
  - Binding keys:
    - ff: Find files
    - fg: Find string in project
    - fb: Find buffer
    - gt: Tab go
    - <Leader> + q/z/w/x : Navigate in buffer
    - <Leader> + <Space>: Remove search highlight
    - <C-v>: In Telescope search -> open file in vertical tab.
    - <C-t>: In Telescope search -> open file in new tab.

- Using NERDTree for showing folder structure:
  - Binding keys:
    - F2: Find file in tree.
    - F3: Toggle NERDTree.
    - s: open selected file in vertical tab. 
    - t: open selected file in new tab.
    - <C-w> c: Close current file.
    - <C-s> : save file.

- Using LSP saga to programming support:
  - Binding keys:
    - gd: go to method define
    - K: hover (show docs)
    - gr: rename a function and variables.
    - <Leader> ca: code action (support by current language LSP.
    - <C-\>: Open floaterm terminal.
    - gh: show code references.
    - F8: toggle Tagbar (build with CTag)

- Using Lightspeed and easymotion to navigate code line faster.
  - Binding keys:
    - <leader><leader> w (EasyMotion)
    - s: Lightspeed
    - vf<char>: to select from current cursor to <char>
    - ysiw <char>: To surround a text with char
    - cs<char><replace_char>: To replace a surround char.

- Markdown/Mermaid:
  - Writing markdown file then run :MarkdownPreview

For more key binding info please check ~/config/nvim/init.vim or check Plugin's github

### TODO:

- LSP and eslint file for typescript and React development.
