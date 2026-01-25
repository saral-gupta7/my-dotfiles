############################################
# 1. Core Shell Behavior
############################################

# Vi mode + jk escape
set -o vi
bindkey -M viins 'jk' vi-cmd-mode

# Default editors
export EDITOR="nvim"
export VISUAL="nvim"

# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)
source $ZSH/oh-my-zsh.sh


############################################
# 2. Language Runtimes & Package Managers
############################################

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Go
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$GOPATH/bin"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.local/opt/go/bin:$PATH"

# Mise
eval "$(~/.local/bin/mise activate zsh)"

# ASDF
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

# rbenv
eval "$(rbenv init - zsh)"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Conda
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ] && . "/opt/anaconda3/etc/profile.d/conda.sh"
fi
unset __conda_setup

# PNPM
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# Solana
export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"

# Android
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/emulator"
export PATH="$PATH:$ANDROID_HOME/platform-tools"

# PHP (Herd)
export PATH="/Users/anyaforger/Library/Application Support/Herd/bin:$PATH"
export HERD_PHP_82_INI_SCAN_DIR="/Users/anyaforger/Library/Application Support/Herd/config/php/82/"
export HERD_PHP_83_INI_SCAN_DIR="/Users/anyaforger/Library/Application Support/Herd/config/php/83/"
export HERD_PHP_84_INI_SCAN_DIR="/Users/anyaforger/Library/Application Support/Herd/config/php/84/"

############################################
# 3. Homebrew & System Libraries
############################################

export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="$(brew --prefix bison)/bin:$PATH"

export CFLAGS="-I/opt/bison/bison-3.7.91/share/include ${CFLAGS}"
export CXXFLAGS="-I/opt/bison/bison-3.7.91/share/include ${CXXFLAGS}"
export LDFLAGS="-L$(brew --prefix)/opt/libffi/lib"
export CPPFLAGS="-I$(brew --prefix)/opt/libffi/include"
export PKG_CONFIG_PATH="$(brew --prefix)/opt/openssl@3/lib/pkgconfig:$(brew --prefix)/opt/libffi/lib/pkgconfig"

export LIBRARY_PATH="$LIBRARY_PATH:/opt/homebrew/opt/libiconv/lib"
export C_INCLUDE_PATH="$C_INCLUDE_PATH:/opt/homebrew/opt/libiconv/include"

############################################
# 4. Prompt, FZF, Navigation
############################################

# Starship
type starship_zle-keymap-select >/dev/null || eval "$(/usr/local/bin/starship init zsh)"

# Zoxide
eval "$(zoxide init zsh)"

# FZF
eval "$(fzf --zsh)"
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

_fzf_compgen_path() { fd --hidden --exclude .git . "$1" }
_fzf_compgen_dir() { fd --type=d --hidden --exclude .git . "$1" }

source ~/fzf-git.sh/fzf-git.sh

############################################
# 5. Tools & CLIs
############################################

# Yazi auto-cd
function f() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  yazi "$@" --cwd-file="$tmp"
  if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
    builtin cd -- "$cwd"
  fi
  rm -f -- "$tmp"
}

# Google Cloud SDK
export PATH="$PATH:$HOME/Downloads/google-cloud-sdk/bin"

# LM Studio
nvim ~/.zshrcxport PATH="$PATH:$HOME/.lmstudio/bin"

# Spicetify
export PATH="$PATH:$HOME/.spicetify"

# Antigravity
export PATH="$HOME/.antigravity/antigravity/bin:$PATH"

# Opencode
export PATH="$HOME/.opencode/bin:$PATH"

# Console Ninja
export PATH="$HOME/.console-ninja/.bin:$PATH"

############################################
# 6. Aliases
############################################

alias stowd='cd ~/dotfiles && stow --adopt .'


alias vim="nvim"
alias python="python3"
alias cd="z"
alias ls="eza --icons=always"
alias t="tmux"
alias cat="bat"
alias pip='pip3'
alias s='source ~/.zshrc'
alias c='clear'
alias lz='lazygit'
alias e='exit'
alias vimt='vim ~/dotfiles/.tmux.conf'
alias ani='ani-cli'
alias yt="yt-dlp"
alias kp='vim /Users/anyaforger/.config/nvim/lua/config/keymaps.lua'
alias bi='brew install'
alias zsh='vim ~/dotfiles/.zshrc'
alias con='vim ~/.config/nvim/init.lua'

alias dot='cd ~/dotfiles'
alias inf='vim ~/Desktop/learn/terminal/info.md'
alias i='instaloader'
alias cs='cd ~/Desktop/lf/subjects/CS && f ~/Desktop/lf/subjects/CS'
alias kara='cd ~/dotfiles/.config/karabiner && vim ~/dotfiles/.config/karabiner/rules.ts'

alias nv='cd ~/.config/nvim && vim ~/.config/nvim'
alias kit='vim ~/dotfiles/.config/kitty/kitty.conf'
alias cur='vim ~/Desktop/lf/curiosity.md'
alias scp='f ~/scripts/'
alias lsd='ls ~/Desktop/'
alias ta='tmux attach'
alias sem='f ~/Downloads/"6th sem"/'
alias gar='f ~/recreation/garbage/'
alias life='vim ~/Desktop/lf/life/life.md'
alias book='f ~/Desktop/lf/subjects/CS/Books/'

# Word and book aliases
alias phr='vim ~/Desktop/lf/subjects/life/language/english/phrase.md'
alias word='vim /Users/anyaforger/Desktop/lf/subjects/life/language/English/words.md'

alias pdf='img2pdf'
alias p='python'

alias grep="rg"

# Rust Based
alias cr='cargo run'

alias cfs='vim /Users/anyaforger/Desktop/lf/subjects/CS/Codeforces/codeforces-learnings/learnings.md'

# Development Based
alias nd='npm run dev'
alias pd='pnpm run dev'
alias pat='pnpm add tailwindcss @tailwindcss/vite'
alias npd='npx prisma migrate dev'

# ffmpeg
alias fps='ffmpeg -i mute.mp4 -vsync 0 -q:v 1 -vf "fps=1" frms/frames_%04d.png'

# tailwindcss
alias tl="pnpm add tailwindcss @tailwindcss/vite"

alias stat='stat -x'
alias onepiece='vim ~/Desktop/lf/WatchList/One-Piece-Arcs.md'

# Django
alias mig='python manage.py makemigrations; python manage.py migrate'

# Docker
alias dps='docker ps'

############################################
# 7. Completion & Misc
############################################

fpath+=~/.zfunc
autoload -Uz compinit
compinit

# Amazon Q
[[ -f "$HOME/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && source "$HOME/Library/Application Support/amazon-q/shell/zshrc.post.zsh"

# Envman
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# Final environment
. "$HOME/.local/bin/env"
export ANI_CLI_PLAYER="mpv"
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@3) --with-readline-dir=$(brew --prefix readline) --with-libyaml-dir=$(brew --prefix libyaml)"
