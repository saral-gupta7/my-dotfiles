# Amazon Q pre block. Keep at the top of this file. [[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" set -o vi

set -o vi
bindkey -M viins 'jk' vi-cmd-mode
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin

export EDITOR="nvim"
export VISUAL="nvim"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
#
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=${PATH}:/usr/local/mysql-8.3.0-macos14-arm64/bin/
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# Set name of the theme to load --- if set to "random", it will
# load a random heme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custonpm run devm plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)

source $ZSH/oh-my-zsh.sh











# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases

# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias vim = "nvim"

# My Aliases
alias vim="nvim"
alias python="python3"
alias cd="z"
alias ls="eza --icons=always"
alias t="tmux"
alias cat="bat"
alias pip='pip3'
alias c='clear'
alias ff='fastfetch'
alias y='yazi'
alias yt="yt-dlp"
alias lz='lazygit'
alias dt='cd ~/Desktop'
alias zsh='vim ~/dotfiles/.zshrc'
alias dot='cd ~/dotfiles'
alias inf='vim ~/Desktop/learn/terminal/info.md'
alias s='source ~/.zshrc'
alias i='instaloader'
alias lf='cd ~/Desktop/lf'
alias sub='cd ~/Desktop/lf/subjects'
alias cs='cd ~/Desktop/lf/subjects/CS && y ~/Desktop/lf/subjects/CS'
alias th='vim ~/Desktop/lf/things_to_do.md'
alias apt='vim ~/Desktop/lf/subjects/Aptitude/progess.md'
alias kara='cd ~/dotfiles/.config/karabiner && vim ~/dotfiles/.config/karabiner/rules.ts'
# nix aliases
alias fl='vim ~/.config/nix-darwin/flake.nix'
alias dar='cd ~/.config/nix-darwin'
alias bld='darwin-rebuild switch --flake ~/.config/nix-darwin#anyaforger'

alias phr='vim ~/Desktop/lf/language/english/phrase.md'
alias nv='cd ~/dotfiles/.config/nvim && vim ~/dotfiles/.config/nvim'
alias e='exit'
alias kit='vim ~/dotfiles/.config/kitty/kitty.conf'
alias cur='vim ~/Desktop/lf/curiosity.md'



eval "$(zoxide init zsh)"
eval "$(thefuck --alias)"

eval "$(atuin init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Starship


eval "$(starship init zsh)"


t a

# ---- Android Studio -----


export ANDROID_HOME=$HOME/Library/Android/sdk 
export PATH=$PATH:$ANDROID_HOME/emulator 
export PATH=$PATH:$ANDROID_HOME/platform-tools

# ---- FZF -----

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --zsh)"
# -- Use fd instead of fzf --

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

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
