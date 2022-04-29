# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

set -gx TERM xterm-256color
# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

set -g theme_display_ruby yes
set -g theme_display_node yes
set -g theme_display_user ssh
set -g theme_display_hostname ssh
set -g theme_display_date yes
set -g theme_display_cmd_duration yes
set -g theme_date_timezone Asia/Saigon
set -g theme_avoid_ambiguous_glyphs yes
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts no
set -g theme_color_scheme dracula

# alliases
alias ls "exa -l -F -B -a --tree --level=1 --icons"
alias la "ls -A"
alias ll "exa -l -F -B -a --tree --level=1 --icons"
alias lla "ll -A"
alias g git
alias tmn "tmux new-session -s"
alias tmls "tmux ls"
alias tmat "tmux attach-session -t"
alias gst "git status"
alias gp "git push origin"
alias gtp "git stash pop"
alias gtu "git stash -u"
alias gcm "git commit -m"
alias gb "git branch"
alias nv "nvim"
alias gl "git log --oneline"
alias lg "lazygit"
alias lc "colorls -lA --sd"
alias ide "nvim ."
alias as "asdf"
#Golang variables

set -g PATH "$PATH:/usr/local/go/bin"
set -g GOPATH "$HOME/go"
set -g PATH "$PATH:$GOROOT/bin:$GOPATH/bin"

# Z for directory jump

source ~/.asdf/asdf.fish
