# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# https://techpp.com/2021/09/13/reset-path-variable-on-mac-guide/
export PATH=$HOME/bin:$PATH
export PATH=/usr/bin/java:$PATH
# macOS  Intel specific PATH
if [[ -d /usr/local/Cellar ]]; then
    export PATH=/usr/local/Cellar:$PATH
    export PATH=/usr/local/sbin:$PATH
fi
if [[ -d /opt/homebrew ]]; then
    export PATH=/opt/homebrew:$PATH
    export PATH=/opt/homebrew/sbin:$PATH
    # node@14
    # export PATH="/opt/homebrew/opt/node@14/bin:$PATH"
fi


# openssl PATH
# using default - compiled from source /usr/local/bin/openssl
#export PATH="/usr/local/opt/openssl@1.0/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
#export PATH="/usr/local/opt/openssl@3/bin:$PATH"
#VMWare
export PATH="${PATH}:/Applications/VMware Fusion.app/Contents/Library"
# - JAVA
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-16.jdk/Contents/Home

# Redhat Podman
# https://www.redhat.com/sysadmin/run-containers-mac-podman
export DOCKER_HOST='unix:///Users/vincentricci/.local/share/containers/podman/machine/qemu/podman.sock'

# Localization for UTF-8 support
# https://org.ngc.nvidia.com/setup/installers/cli
export LC_ALL=en_US.UTF-8

# - NVM:
if [[ ! -d ${HOME}/.nvm ]]; then
  mkdir -p ${HOME}/.nvm
fi
export NVM_DIR="$HOME/.nvm"
export NVM_COMPLETION=true
export NVM_LAZY_LOAD=true

# - PIPENV: Ensure pipenv creates environment inside the current directory
export PIPENV_VENV_IN_PROJECT="enabled"

# - PYENV - Must install *python-version dependent* patch from https://github.com/pyenv/pyenv/issues/1740
# - OPENSSL@3 - from homebrew install
#export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib -L/usr/local/lib/"
export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib -L/usr/local/opt/openssl@1.1/lib"
#export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib -L/usr/local/opt/openssl@3/lib"
#export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include -I/usr/local/include"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include -I/usr/local/opt/openssl@1.1/include"
#export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include -I/usr/local/opt/openssl@3/include"
#export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"
#export PKG_CONFIG_PATH="/usr/local/opt/openssl@3/lib/pkgconfig"

# - PYTHON
# DO NOT set the Python PATH here 
export PYTHONPATH="${HOME}/Documents/Development/PYTHON"
#- suppress __pycache__ (slower loading)
export PYTHONDONTWRITEBYTECODE=1
#- PYTHON  REPL: Customize your Python interpreter - see https://realpython.com/effective-python-environment/
#export PYTHONSTARTUP="${HOME}/.pystartup"

# - zsh syntax highlight requires this (does not appear to source .zshenv)
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters

# - ZSH: Path to your oh-my-zsh installation. This is the parent folder for oh-my-zsh.sh
export ZSH="${HOME}/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# zsh-nvm plugin - https://github.com/lukechilds/zsh-nvm
if [[ ! -d "${HOME}/.oh-my-zsh/custom/plugins/zsh-nvm" ]]; then
    git clone https://github.com/lukechilds/zsh-nvm.git ${HOME}/.oh-my-zsh/custom/plugins/zsh-nvm
fi
# ssh-agent plugin - see https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/ssh-agent
#plugins=(ansible aws terraform git colored-man-pages colorize macos pip python brew ssh-agent vagrant virtualenv zsh-nvm zsh-autosuggestions zsh-completions)
plugins=(
  ansible 
  aws terraform
  brew 
  docker docker-compose 
  git colored-man-pages colorize 
  gpg-agent
  macos nmap
  multipass 
  kubectl
  podman
  pip python
  salt 
  vagrant virtualenv
  vim-interaction
  vscode 
  zsh-nvm 
  zsh-autosuggestions
  zsh-syntax-highlighting
  fast-syntax-highlighting
  #zsh-autocomplete
)
zstyle :omz:plugins:ssh-agent agent-forwarding on
zstyle :omz:plugins:ssh-agent identities id_rsa ansible_id_rsa x509-user_id_rsa
zstyle :omz:plugins:ssh-agent lifetime 4h
#autoload -Uz compinit && compinit
#autoload -U +X bashcompinit && bashcompinit

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
source $ZSH/oh-my-zsh.sh

# User configuration

# removes write permission from groups and all permission for others
umask 0027

## Environment Variables
export TODAY=$(date)
export HISTCONTROL=ignoredups 
export HISTSIZE=1000

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
export ARCHFLAGS="-arch arm64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
source ~/.bash_aliases
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Custom Functions
bashman () { man bash | less -p "^^       $1 "; }
cd ()      { builtin cd "$@" ; echo "truncated content" ; ltt; }     # change to dir and lists latest content tail
ct ()      { builtin cd "$@" && tree -a -L 1; }  # change to dir and tree
cdl ()     { LAST_FOLDER="$(ls -c1 -rt | tail -1)" && cd ${LAST_FOLDER} } # go to the last modified directory
diffs ()   { diff -yw --suppress-common-lines "$@"; }  # display diff side by side
mcd ()     { mkdir -p "$1" && cd "$1"; }              # makes new dir and jumps into it
mansi ()   { man $1 | grep -iC2 --color=always $2 | less; } # mans: search man pages given an argument 1
md5sum ()  { /sbin/md5 -r "$@"; } # md5 -r displays the same output format as md5sum 
ssh509 ()  { /usr/local/bin/ssh509 -F ~/.ssh/x509_config -oPubkeyAcceptedAlgorithms=x509v3-sign-rsa "$@"; }
sshp ()    { /usr/bin/ssh -F ~/.ssh/config -o PreferredAuthentications=password -o PubkeyAuthentication=no "$@"; } # force password authentication0
tg ()     { open -a "/Applications/glogg.app" "$(pwd)/$@"; } # open new glogg session
tk ()     { open -a "/Applications/klogg.app" "./$@"; } # open new klogg session
# How to run nvm in .zsh - https://stackoverflow.com/questions/47009776/how-to-run-nvm-in-oh-my-zsh/47017363
lazynvm() {
  unset -f nvm node npm
  export NVM_DIR=~/.nvm
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
}
nvm() {
  lazynvm 
  nvm $@
}
node() {
  lazynvm
  node $@
}
npm() {
  lazynvm
  npm $@
}
# configure the shell environment for pyenv (Python version manager)
# https://github.com/pyenv/pyenv#basic-github-checkout
# https://github.com/pyenv/pyenv
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"
 
# install the latest LTS version for nvm
# to avoid error 'nvm_list_aliases:36: no matches found: ~/.nvm/alias/lts/*'
#nvm install --lts && nvm use --lts

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Vagrant completion
fpath=(/opt/vagrant/embedded/gems/2.2.15/gems/vagrant-2.2.15/contrib/zsh $fpath)
#compinit

complete -o nospace -C /usr/local/bin/terraform terraform

##  NOTES
#  brew install zsh breaks VSCODE integrated Terminal with "excpv(3) Permission denied"
#  https://www.gitmemory.com/issue/microsoft/vscode/126017/860880456

#GITSTATUS_LOG_LEVEL=DEBUG
# source /usr/local/share/powerlevel10k/powerlevel10k.zsh-theme
## References
# 1. correct way to define .ovpn profile
# https://community.netgear.com/t5/Nighthawk-Wi-Fi-5-AC-Routers/OpenVPN-on-iPhone-fails-to-import-profile-for-NightHawk-R700P/td-p/1995576
# 2. how to protect private email in github
# https://stackoverflow.com/questions/43863522/error-your-push-would-publish-a-private-email-address
# 3. Fix homebrew install for Apple Silicon
# https://osxdaily.com/2021/02/06/installing-homebrew-apple-silicon-mac-native/

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/vincentricci/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/vincentricci/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/vincentricci/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/vincentricci/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

