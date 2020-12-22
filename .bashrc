#################################################################
#                               				#
#	.bashrc file				                #
#								#
#	created by Vincent Ricci			        #
#       modified on 12.31.2016                                  #
#								#
#	specifies aliases					#
#								#
#################################################################
#
# Description: This file holds all my BASH configurations and aliases
#
# Sections
# 1. Environment Configurations
# 2. Make Terminal Better (remapping defaults and adding functionality)
# 3. File and Folder Management
# 4. Searching
# 5. Process Management
# 6. Networking
# 7. System Operations & Information
# 8. Web Development
# 9. Reminder and Notes
#
# --------------------------------------------------------------------


# --------------------------------------------------------------------
# 1. Environment Configuration 
# --------------------------------------------------------------------

export HOSTNAME='ricci-server'
# define GIT branch function to test whether you are running git or update prompt

#gb() {
#        echo -n '(' && git branch 2>/dev/null | grep '^*' | colrm 1 2 | tr -d '\n' && echo  -n ')'
#}

#git_branch() {
#        gb | sed 's/()//'
#}

# defines default file creation permission:
# removes write permission from groups and all permission for others
    umask 0027

# TODAY
    export TODAY=$(date)

# HISTORY 
    export HISTCONTROL=ignoredups # ignore a command if the same command was just recorded
    export HISTSIZE=1000

# Set Default Editor
    export EDITOR=/usr/bin/vim

# LS COLOR - show directories in light blue
# https://unix.stackexchange.com/questions/2897/clicolor-and-ls-colors-in-bash
    export LSCOLORS=gxfxcxdxBxegedabagacad

# PROMPTS
    #export PS1="______________________________________________________________________________\n \w@\h (\u)\n$ "
    #export PS1="\n\w@\h (\u) \$(git_branch)\n$(ifconfig | egrep  '^utun|^en|inet ' | egrep -A 1 '^utun|^en' | grep -w inet | awk '{ print $2 }' | sed 's@^@ @g') \n /\t/ $ "
    export PS1="\n \w@\h \$(git_branch)\n /\t/ (\u) $ "
    export PS2='... $'

# System path
    export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/usr/libexec"

# User specific environment and startup programs
    export PATH="$HOME/bin:$HOME/.local/bin:$HOME/Development/BASH:$HOME/Development/PERL:$PATH"

# Screen Path
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"

# Github, SQLITE and SQL execs
    export PATH="/usr/local/git/bin:/sw/bin:/usr/local/mysql/bin:/usr/local/opt/sqlite/bin:$PATH"

# MacPorts Installer addition on 2016-04-12_at_19:14:29: adding an appropriate PATH variable for use with MacPorts.
    export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# Finished adapting your PATH environment variable for use with MacPorts.
    #export PATH="$HOME/.jenv/bin:$PATH"
    #eval "$(jenv init -)"

# Customize LL_ALL to avoid Mac OS Sed errors.  See http://www.real-world-systems.com/docs/cut.1.html
    export LC_ALL=C

# PYTHON SETTINGS
    export PYTHON_TOP_DIR="$HOME/Documents/Development/PYTHON"
    export PYTHONPATH="${PYTHON_TOP_DIR}/bin"
    export PATH="${PYTHONPATH}:${PATH}"

# VIRTUALENV SETTINGS
# http://virtualenvwrapper.readthedocs.io/en/latest/command_ref.html
# pip cannot run outside of a virtual environment. Use gpip() otherwise
# homebrew has replaced pip with pip2. 

    export WORKON_HOME="$HOME/.virtualenvs"
    export PROJECT_HOME="$PYTHON_TOP_DIR"
    export VIRTUALENVWRAPPER_PYTHON="/usr/local/bin/python2"
    export VIRTUALENVWRAPPER_VIRTUALENV="/usr/local/bin/virtualenv"
    source /usr/local/bin/virtualenvwrapper.sh
   
    export PIP_REQUIRE_VIRTUALENV=true

    gpip2(){
    PIP_REQUIRE_VIRTUALENV="" pip2 "$@"
    }

    gpip3(){
    PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
    }

heatvim () { vim -u ~/.osvimrc $1; }       # use vim with the .osvimrc settings for Openstack Heat (2 spaces-tabs)

# JAVA_HOME
# set dynamically
    export JAVA_HOME="$(/usr/libexec/java_home)"

# Aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# --------------------------------------------------------------------
# 2. Make Terminal Better
# --------------------------------------------------------------------


# Custom Functions
cd ()    { builtin cd "$@" ; ll; }		                            # change to dir and lists content

diffs () { diff -yw --suppress-common-lines "$@"; }                 # display diff side by side

mcd ()   { mkdir -p "$1" && cd "$1"; }	                            # makes new dir and jumps into it

mansi ()  { man $1 | grep -iC2 --color=always $2 | less; }          # mans: search man pages given an argument 1 
                                                                    # for term given in argument 2 (case insensitive)
                                                                    # displays paginated results with colored search terms 
                                                                    #and two lines surrounding each hits
pskill () {
    local pid
    pid=$(ps -ax | grep $1 | grep -v grep | gawk '{ print $1 }')
    echo -n "killing $1 (process $pid)..."
    kill -9 $pid
    echo "slaughtered."
}

ql ()    { qlmanage -p "$*" >& /dev/null; }	                        # ql: 	 opens anyfile into MacOS Preview

trash () { command mv "$@" ~/.Trash; }		                        # trash: 


# --------------------------------------------------------------------
# 5. Process Management
# --------------------------------------------------------------------

findPid () { lsof -t -c "$@"; }                                     #findPid(): find out the pid of a specified process

myPs () { ps $@ -u $USER -o pid,%cpu,%mem,start,time,bsdtime,command; }  # myPs (): List Processes owned by me


# --------------------------------------------------------------------
# 6. Networking
# --------------------------------------------------------------------

ii () {                                                             # ii(): display useful host related information
	echo -e "\nYou are logged on : " ; scutil --get HostName
	echo -e "\nAdditional information: " ; uname -a
	echo -e "\nUsers logged on : " ; w -h
	echo -e "\nCurrent date : " ; date
	echo -e "\nMachine stats : " ; uptime
	echo -e "\nCurrent Network Location : " ; scselect
	echo -e "\nPublic facing IP Address : " ; myip
	echo -e "\nDNS Configuration : " ; scutil --dns | head -8 | tail -7
}


# --------------------------------------------------------------------
# 8. Development
# --------------------------------------------------------------------

# Open python doc in a browser
#PERL_MB_OPT="--install_base \"/Volumes/Users/vricci/perl5\""; export PERL_MB_OPT;
#PERL_MM_OPT="INSTALL_BASE=/Volumes/Users/vricci/perl5"; export PERL_MM_OPT;
#source ~/perl5/perlbrew/etc/bashrc
#eval $(perl -I$HOME/.perl/lib/perl5 -Mlocal::lib=$HOME/.perl)


# --------------------------------------------------------------------
# 9. Reminder and Notes
# --------------------------------------------------------------------

# http://www.macosxhints.com/article.php?story=20060816123853639
# Virtualenv guide:  https://virtualenv.pypa.io/en/stable/
# Virtualenvwrapper: http://virtualenvwrapper.readthedocs.io/en/latest/#
# Virtualenv Command Reference: http://virtualenvwrapper.readthedocs.io/en/latest/command_ref.html#project-directory-management
# Code Tutorials:  https://www.tutorialspoint.com/tutorialslibrary.htm
# some OSX utilities do not follow GNU linux.  Use $'\n@g' in s@^@$'n@g
# installing brew install coreutils does not overwrite the original
#
# no gsed in macoS Sierra unlike what this article states:
# http://superuser.com/questions/476575/replace-os-xs-shell-commands-with-the-linux-versions
#
# Adding your SSH key to the ssh-agent (put in .bash_profile)
#   https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/
#
# namespaces on Linux:  
#   sudo ip netns exec < namespace > < command >
# 
# Wireshark -- how to open multiple windows in MacOS Sierra
#   https://ask.wireshark.org/questions/54036/open-multiple-captures-on-mac
# Encrypt RAID members
# https://apple.stackexchange.com/questions/81504/why-doesnt-filevault-work-on-a-raid-volume
