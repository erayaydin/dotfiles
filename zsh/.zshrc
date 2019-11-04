# Oh-My-Zsh Installation Path
export ZSH="/home/eray/Programs/Oh-My-Zsh"

# Zsh Theme
ZSH_THEME="agnoster"

# Do not use case-sensitive completion.
# CASE_SENSITIVE="false"

# Do not use hyphen-insensitive completion.
# (Case-sensitive completion must be off)
# HYPHEN_INSENSITIVE="true"

# Disable bi-weekly auto-update check.
DISABLE_AUTO_UPDATE="true"

# How often to auto-update
# export UPDATE_ZSH_DAYS=15

# Disable colors in `ls`.
# DISABLE_LS_COLORS="false"

# Disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="false"

# Enable command auto-correction.
# ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Disable marking untracked files under VCS as dirty.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Command execution timestamp show in the history command output.
HIST_STAMPS="yyyy-mm-dd"

# Custom folder for $ZSH/custom
# ZSH_CUSTOM=~/Programs/Oh-My-Zsh/custom

# Plugins
# Standard plugins: $OH_MY_ZSH_INSTALLATION/plugins
# Custom plugins: $ZSH_CUSTOM/plugins
plugins=(
    # Git Plugin (git aliases)
  git
    # Archlinux Plugin (yay, trizen, yaourt, pacaur, pacman aliases and funcs)
  archlinux
    # Bundler Plugin (bundler aliases and completion)
  bundler
    # Composer Plugin (composer aliases, completion and PATH for global binaries)
  composer
    # General aliases
  common-aliases
    # Docker Plugin (docker completion)
  docker
    # Gitignore Plugin (gitignore.io/gi commands)
  gitignore
    # Json Tools Plugin (pp_json, is_json, urlencode_json, urldecode_json commands)
  jsontools
    # Npm Plugin (NPM aliases and completion)
  npm
    # Pip Plugin (Pip completion)
  pip
    # Python Plugin (Python interpreter completion)
  python
    # Bower Plugin (Bower aliases and completion)
  #bower
    # Copy File Plugin (copy contents of file to clipboard)
  copyfile
    # Encode64 Plugin (en/decode strings in base64)
  encode64
    # Extract Plugin (extract archive)
  extract
    # Gpg Agent Plugin (starts gpg-agent)
  gpg-agent
    # Last Working Directory Plugin
  last-working-dir
    # Passlib Plugin (completion)
  pass
    # Web Search Plugin
  web-search
)

source $ZSH/oh-my-zsh.sh

## STARTUP
# Start neofetch
neofetch
# Start thefuck
eval $(thefuck --alias)

## ALIASES
alias letsfun="startx"

# Default Arguments
alias elinks="elinks -config-dir '.config/elinks'"
alias irssi="irssi --home=~/.config/irssi --config=~/.config/irssi/config"

## EXPORTS
# XDG Directories
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
# Set default editor to vim
export EDITOR=vim
# Passlib store
export PASSWORD_STORE_DIR=$XDG_DATA_HOME/pass
export PASSWORD_STORE_GIT=$XDG_DATA_HOME/pass
# GnuPG
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"
# Android SDK
export ANDROID_SDK_HOME="$HOME/Development/Android/SDK"

# Binary Paths
export PATH="${PATH}:/home/eray/Bin"
export PATH="${PATH}:/opt/cuda/bin"
export PATH="${PATH}:/home/eray/.local/bin"
export PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"

# Source Eray's XDG Base Directory Support
if [ -f $XDG_CONFIG_HOME/eray/xdg_base_directory_support.sh ]; then
    source $XDG_CONFIG_HOME/eray/xdg_base_directory_support.sh
else
    print "Couldn't found $XDG_CONFIG_HOME/eray/xdg_base_directory_support.sh file.\n"
fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
