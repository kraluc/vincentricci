# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
#export PATH="/usr/local/opt/inetutils/libexec/gnubin:$PATH"
export PATH=$HOME/bin:$PATH
export PATH=$HOME/.pyenv/bin:$PATH
export PATH=/usr/bin/java:$PATH
export PATH=/usr/local/Cellar:$PATH
export PATH=/usr/local/sbin:/Users/vincentricci/Library/Python/2.7/bin:$PATH

# - JAVA
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-16.jdk/Contents/Home

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
export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"

# - PYTHON 
#export PYTHONPATH="${HOME}/Documents/Development/PYTHON"

# - PYTHON  REPL: Customize your Python interpreter - see https://realpython.com/effective-python-environment/
export PYTHONSTARTUP="${HOME}/.pystartup"

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
# CASE_SENSITIVE="true"

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
plugins=(ansible aws terraform docker docker-compose git colored-man-pages colorize macos pip python brew ssh-agent vagrant virtualenv zsh-nvm zsh-autosuggestions zsh-completions)
zstyle :omz:plugins:ssh-agent agent-forwarding on
zstyle :omz:plugins:ssh-agent identities id_rsa ansible_id_rsa
zstyle :omz:plugins:ssh-agent lifetime 4h
autoload -Uz compinit && compinit
autoload -U +X bashcompinit && bashcompinit

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
# export ARCHFLAGS="-arch x86_64"

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
cd ()    { builtin cd "$@" ; echo "truncated content" ; ltt; }     # change to dir and lists latest content tail
ct ()     { builtin cd "$@" && tree -a -L 1; }  # change to dir and tree
cdl ()   { LAST_FOLDER="$(ls -c1 -rt | tail -1)" && cd ${LAST_FOLDER} } # go to the last modified directory
diffs () { diff -yw --suppress-common-lines "$@"; }  # display diff side by side
mcd ()   { mkdir -p "$1" && cd "$1"; }              # makes new dir and jumps into it
mansi () { man $1 | grep -iC2 --color=always $2 | less; } # mans: search man pages given an argument 1
md5sum() { /sbin/md5 -r "$@"; } # md5 -r displays the same output format as md5sum 
sshp ()  { ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no "$@"; } # force password authentication
tg ()    { open -a "/Applications/glogg.app" "$(pwd)/$@"; } # open new glogg session
tk ()    { open -a "/Applications/klogg.app" "./$@"; } # open new klogg session
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
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
 
# install the latest LTS version for nvm
# to avoid error 'nvm_list_aliases:36: no matches found: ~/.nvm/alias/lts/*'
#nvm install --lts && nvm use --lts

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# >>>> Vagrant command completion (start)
fpath=(/opt/vagrant/embedded/gems/2.2.15/gems/vagrant-2.2.15/contrib/zsh $fpath)
compinit
# <<<<  Vagrant command completion (end)

complete -o nospace -C /usr/local/bin/terraform terraform

export PATH="/usr/local/opt/openssl@1.0/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

##  NOTES
#  brew install zsh breaks VSCODE integrated Terminal with "excpv(3) Permission denied"
#  https://www.gitmemory.com/issue/microsoft/vscode/126017/860880456
