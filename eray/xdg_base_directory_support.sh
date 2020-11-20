#### Eray's XDG Base Directory Support Env Variables
#### Version: 0.2
#### References:
####  - https://wiki.archlinux.org/index.php/XDG_Base_Directory

### Zsh
### Issue 1: Zsh and Bash use same HISTFILE environment

# Create zsh data directory if not exists
if [ ! -d "$XDG_DATA_HOME/zsh" ]
then
    mkdir "$XDG_DATA_HOME/zsh"
fi

# Set history file location
export HISTFILE="$XDG_DATA_HOME"/zsh/history

### Java

# Java options(Jetbrains IDE and other Java applications)
export _JAVA_OPTIONS="-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME -Duser.home=$XDG_DATA_HOME"

# Yourkit
export YOURKIT_HOME="$XDG_CACHE_HOME"

### Elinks
export ELINKS_CONFDIR="$XDG_CONFIG_HOME/elinks"

### Drush
export DRUSH_PATHS_CACHE_DIRECTORY="$XDG_CACHE_HOME/drush"

### OpenSSL

# Create OpenSSL data directory if not exists
if [ ! -d "$XDG_DATA_HOME/openssl" ]
then
    mkdir "$XDG_DATA_HOME/openssl"
fi

# Set randfile location
export RANDFILE="$XDG_DATA_HOME"/openssl/rnd

### Curl

# Set Curl home directory
export CURL_HOME="$XDG_CONFIG_HOME"/curl

### NodeJS

# Set Node Repl History file location
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history

# NPMRc
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc

### Wget

# Create Wget config directory if not exists
if [ ! -d "$XDG_CONFIG_HOME/wget" ]
then
    mkdir "$XDG_CONFIG_HOME/wget"
fi

# Create wget config file if not exists
# Error: wget: WGETRC points to ...., which couldn't be accessed
#  because of error: No such file or directory.
if [ ! -f "$XDG_CONFIG_HOME/wget/wgetrc" ]
then
    touch "$XDG_CONFIG_HOME/wget/wgetrc"
fi

# Set Wgetrc Location
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"

# Wget Histories File Alias
alias wget=wget --hsts-file="$XDG_CACHE_HOME/wget/wget-hsts"

### Ruby
# Bundler
export BUNDLE_USER_CONFIG="$XDG_CONFIG_HOME"/bundle
export BUNDLE_USER_CACHE="$XDG_CACHE_HOME"/bundle
export BUNDLE_USER_PLUGIN="$XDG_DATA_HOME"/bundle
# Gem
export GEM_HOME="$XDG_DATA_HOME"/gem
export GEM_SPEC_CACHE="$XDG_CACHE_HOME"/gem

### X11

# Set Xinitrc file location
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
# Set Xserverrc file location
export XSERVERRC="$XDG_CONFIG_HOME"/X11/xserverrc

# Startx alias
alias startx="startx $XDG_CONFIG_HOME/X11/xinitrc"

# Set Xauthority Location
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority

### Vim

export VIMINIT=":source $XDG_CONFIG_HOME"/vim/vimrc

### Vagrant

export VAGRANT_HOME="$XDG_DATA_HOME"/vagrant
export VAGRANT_ALIAS_FILE="$XDG_DATA_HOME"/vagrant/aliases

### TogglCLI
alias toggl="toggl --config $XDG_CONFIG_HOME/togglrc"

### Docker
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker
