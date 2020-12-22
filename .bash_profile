# .bash_profile

# Set bashcompletion v.2
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# Set architecture flags
export ARCHFLAGS="-arch x86_64"

# Setup SSH Agent before connecting to the usual hosts
eval "$(ssh-agent -s)" 1> /dev/null

# Solution from Stackoverflow:  https://stackoverflow.com/questions/18880024/start-ssh-agent-on-login

SSH_ENV="$HOME/.ssh/environment"

function start_agent {
    echo "Initialising new SSH agent..."
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo succeeded
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add;
}

# Source SSH settings, if applicable

if [ -f "${SSH_ENV}" ]; then
    . "${SSH_ENV}" > /dev/null
    #ps ${SSH_AGENT_PID} doesn't work under cywgin
    ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi

ssh-add -K ~/.ssh/id_rsa 2> /dev/null


# Calendar
echo -e "\n" ; /usr/bin/cal 
echo -e "\n[+]  Uptime:\t\t$(uptime | sed 's@^  *@@g')"
# myIP
echo -e "[+]  WAN: \t\t$(myip)"
echo -e "[+]  WLAN:  \t\t$(ipen0 | grep 'yiaddr' | awk '{ print $3 }')" 
# add vmnet-dhcpd and vmnet-natd to the Firewall
echo -e "[+]  Fusion NAT:  \t$(sudo /usr/libexec/ApplicationFirewall/socketfilterfw --add /Applications/VMware\ Fusion.app/Contents/Library/vmnet-dhcpd 2> /dev/null)"
echo -e "[+]  Fusion DHCP: \t$(sudo /usr/libexec/ApplicationFirewall/socketfilterfw --add /Applications/VMware\ Fusion.app/Contents/Library/vmnet-natd 2> /dev/null)"
# add dynamips to the Firewall
echo -e "[+]  Dynamips:    \t$(sudo /usr/libexec/ApplicationFirewall/socketfilterfw --add /Applications/GNS3.app/Contents/Resources/dynamips)"
echo -e "[+]  GNS3 ubridge:\t$(sudo /usr/libexec/ApplicationFirewall/socketfilterfw --add /Applications/GNS3.app/Contents/Resources/ubridge)"
echo -e "[+]  gns3server:  \t$(sudo /usr/libexec/ApplicationFirewall/socketfilterfw --add /Applications/GNS3.app/Contents/MacOS/gns3server)"
echo -e ""
# Check state of DHCP on Shared interface
sudo /Applications/VMware\ Fusion.app/Contents/Library/vmnet-cli --status | grep vmnet8 | sed 's@^@     @g'
echo -e ""
# Running jobs
somejobs="$(jobs | head -5)"
if [ -z $somejobs ] ; then somejobs="None" ; fi
echo -e "[+]  Jobs: \t\t${somejobs}"
# Homebrew services running
echo -e "[+]  Homebrew: \n$(brew services list -v | tail -n +2 | sed -e 's@^@	    	    	@g' 2> /dev/null)"
logged=$(who -u | head)
echo "${logged}" | sed 's@^@                        @g' | sed '1s@^ *@\[+\]  Logged in:         @' 

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/vincentricci/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
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

