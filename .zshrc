
# Enable vim mode in terminal and setting up jk keymap to enter normal mode.
set -o vi
bindkey -M viins 'jk' vi-cmd-mode

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin

export EDITOR="nvim"
export VISUAL="nvim"

export PATH=${PATH}:/usr/local/mysql-8.3.0-macos14-arm64/bin/
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# zsh important plugins installation
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)
source $ZSH/oh-my-zsh.sh


# setting up yazi shortcuts that also changes directories based upon last exit!

function f() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# My Aliases

# Basic Necessities
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

alias dot='cd ~/dotfiles'
alias inf='vim ~/Desktop/learn/terminal/info.md'
alias i='instaloader'
alias cs='cd ~/Desktop/lf/subjects/CS && y ~/Desktop/lf/subjects/CS'
alias kara='cd ~/dotfiles/.config/karabiner && vim ~/dotfiles/.config/karabiner/rules.ts'

# nix aliases (not used anymore)
alias fl='vim ~/.config/nix-darwin/flake.nix'
alias dar='cd ~/.config/nix-darwin'
alias bld='darwin-rebuild switch --flake ~/.config/nix-darwin#anyaforger'

alias nv='cd ~/dotfiles/.config/nvim && vim ~/dotfiles/.config/nvim'
alias kit='vim ~/dotfiles/.config/kitty/kitty.conf'
alias cur='vim ~/Desktop/lf/curiosity.md'
alias scp='f ~/scripts/'
alias lsd='ls -d */' #list directory alias
alias ta='tmux attach'
alias sem='y ~/Downloads/sem4/'
alias life='vim ~/Desktop/lf/life/life.md'
alias book='f ~/Desktop/lf/subjects/CS/Books/'
# word and book aliases
alias phr='vim ~/Desktop/lf/subjects/life/language/english/phrase.md'
alias word='vim /Users/anyaforger/Desktop/lf/subjects/life/language/English/words.md'

alias pdf='img2pdf'
alias p='python'


# Rust Based
alias cr='cargo run'


# Development Based

alias nd='npm run dev'
alias pd='pnpm run dev'
alias pat='pnpm add tailwindcss @tailwindcss/vite';
alias npd='npx prisma migrate dev'


alias stat='stat -x'


eval "$(zoxide init zsh)"
eval "$(thefuck --alias)"
# eval "$(atuin init zsh)"

# python specific
alias mig='python manage.py makemigrations; python manage.py migrate'
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Starship
# Check that the function `starship_zle-keymap-select()` is defined.
# xref: https://github.com/starship/starship/issues/3418
type starship_zle-keymap-select >/dev/null || \
  {
    eval "$(/usr/local/bin/starship init zsh)"
  }

# eval "$(starship init zsh)"




# ---- Android Studio -----
export CFLAGS="-I/opt/bison/bison-3.7.91/share/include ${CFLAGS}"
export CXXFLAGS="-I/opt/bison/bison-3.7.91/share/include ${CXXFLAGS}"
export LDFLAGS="-L/opt/bison/bison-3.7.91/lib ${LDFLAGS}"
export PATH="/opt/bison/bison-3.7.91/bin:${PATH}"

export ANDROID_HOME=$HOME/Library/Android/sdk 
export PATH=$PATH:$ANDROID_HOME/emulator 

export PATH=$PATH:$ANDROID_HOME/platform-tools
# tmuxifer path
export PATH="$HOME/.tmuxifier/bin:$PATH"

eval "$(tmuxifier init -)"
# Path for my zsh scripts (It makes it globally accssible)
export PATH="$HOME/scripts:$PATH"

# ---- FZF -----
export PATH=$PATH:/opt/homebrew/bin/cb

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --zsh)"

# -- Use fd instead of fzf --
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

export LIBRARY_PATH="$LIBRARY_PATH:/opt/homebrew/opt/libiconv/lib"
export C_INCLUDE_PATH="$C_INCLUDE_PATH:/opt/homebrew/opt/libiconv/include"

# Use fd (https://github.com/sharkdp/fd) for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}



source ~/fzf-git.sh/fzf-git.sh
# source /opt/homebrew/share/powerlevel10npm run devk/powerlevel10k.zsh-theme

# bun completions
[ -s "/Users/anyaforger/.bun/_bun" ] && source "/Users/anyaforger/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH=$PATH:/Users/anyaforger/.spicetify

PATH=~/.console-ninja/.bin:$PATH
POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true



# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"


# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/anyaforger/Library/Application Support/Herd/config/php/83/"


# Herd injected PHP binary.
export PATH="/Users/anyaforger/Library/Application Support/Herd/bin/":$PATH


# Herd injected PHP 8.4 configuration.
export HERD_PHP_84_INI_SCAN_DIR="/Users/anyaforger/Library/Application Support/Herd/config/php/84/"


# Herd injected PHP 8.2 configuration.
export HERD_PHP_82_INI_SCAN_DIR="/Users/anyaforger/Library/Application Support/Herd/config/php/82/"
export ANI_CLI_PLAYER="mpv"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
export PATH=$PATH:$HOME/.local/opt/go/bin
export PATH=$PATH:$HOME/go/bin


# Load Angular CLI autocompletion.
source <(ng completion script)

# Added by Windsurf
export PATH="/Users/anyaforger/.codeium/windsurf/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/anyaforger/.lmstudio/bin"

fpath+=~/.zfunc; autoload -Uz compinit; compinit

. "$HOME/.local/bin/env"

# pnpm
export PNPM_HOME="/Users/anyaforger/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"
export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"
export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"
export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"
