alias ..='cd ..'
alias 56leaf57='ssh admin@172.16.102.57'
alias 56leaf58='ssh admin@172.16.102.58'
alias 7k1='ssh admin@172.16.102.59'
alias 7k2='ssh admin@172.16.102.60'
alias 7k3="ssh admin@10.201.177.16"
alias 7k4="ssh admin@10.201.177.15"
alias 7kflow="ssh admin@10.122.176.46"
alias 9kv='ssh -i ~/.ssh/id_rsa admin@172.16.139.139'
alias 9kv='ssh -i ~/.ssh/id_rsa admin@172.16.139.139'        # NXOSv in 9Kv topo
alias acl='python /Volumes/Users/admin/Development/PYTHON/Python3.7/acls/aclgen.py'
alias ans='cd /Volumes/Users/vricci/Documents/Development/Ansible/ansible-sj-static && pipenv shell'
alias ansi='ssh -t -l admin 172.16.102.117 -t /bin/zsh -ic "ansi"'  # Run remote alias with pseudo-terminal - https://www.cyberciti.biz/faq/use-bash-aliases-ssh-based-session/
alias as='cd ~/Library/services'
alias bell7K_PRD01='ssh admin@10.122.177.40'
alias bell7K_PRD02='ssh admin@10.122.176.111'
alias bell9K_SPINE1='ssh admin@10.122.160.86'
alias bell9K_SPINE2='ssh admin@10.122.160.91'
alias bell9K_TOR1='ssh admin@10.122.160.76'
alias bell9K_TOR2='ssh admin@10.122.160.118'
alias bell9K_host1='ssh admin@10.122.160.126'
alias bell9K_host2='ssh admin@10.122.160.81'
alias bgw31="ssh admin@172.16.102.31"
alias bgw32="ssh admin@172.16.102.32"
alias bgw33="ssh admin@172.16.102.33"
alias bgw34="ssh admin@172.16.102.34"
alias bl="brew list --formula "
alias brewup='brew update ; brew upgrade ; brew cleanup ; brew doctor'
alias bs="brew search "
alias c='clear'
alias calo='lftp calo:calo@172.16.11.29'
alias calobru='lftp calo:calo@calo-bru-fs.cisco.com'
alias calomx='lftp admin@10.31.104.72'
alias calor='lftp calo:calo@calo-rtp-fs.cisco.com'
alias calorcdn="lftp calo:calo@172.18.108.26"
alias cat9K1='ssh admin@10.201.177.135'
alias cdl="cd $(ls -c1 -rt | tail -1)"
alias cent="ssh vricci@172.16.31.4"
alias chx='chmod +x'
alias clean="egrep -v '(#|^$)' " 
alias cpuHogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'
alias dcnm1='ssh sysadmin@sj-dcrs-dcnm1.cisco.com'
alias dcnm2='ssh sysadmin@sj-dcrs-dcnm2.cisco.com'
alias ddu='du -sh * | sort -hr | head -20'
alias dev='cd ~/Documents/Development && tree -L 1' 
alias deva='cd ~/Documents/Development/Ansible && tree -L 1'
alias devb='cd ~/Documents/Development/Bash && tree -L 1'
alias devp='cd ~/Documents/Development/PYTHON && tree -L 1'
alias dhcpconfig='sudo /Applications/VMware\ Fusion.app/Contents/Library/vmnet-cli --configure'
alias dhcpstart='sudo /Applications/VMware\ Fusion.app/Contents/Library/vmnet-cli --start'
alias dhcpstop='sudo /Applications/VMware\ Fusion.app/Contents/Library/vmnet-cli --stop'
alias dkrmall='docker rm $(docker ps -qa)'
alias dkrmiall='docker rmi $(docker images -qa)' 
alias dkstopall='docker stop $(docker ps -q)'
alias dp='docker ps'
alias dpa='docker ps -a'
alias flushDNS='sudo dscacheutil -flushcache'
alias fw='sudo /usr/libexec/ApplicationFirewall/socketfilterfw --listapps'
alias gam='git commit -am'
alias gh='git hist'
alias gl2='git log -p -2'
alias gns3='ssh gns3@172.16.139.135'
alias gns3rp="ssh -i ~/.ssh/id_rsa gns3@172.16.102.100"
alias golf='ssh admin@172.16.102.12'
alias grh='git reset HEAD'
alias gs='git status'
alias gsv='git status -v'
alias gx='ssh admin@10.122.165.214'
alias host1='ssh -l vincentricci 172.16.17.140'             # CentOS7
alias ipen0='ipconfig getpacket en0'
alias ipen3='ipconfig getpacket en3'
alias ise='ssh ansible@172.16.31.5'
alias killdns='sudo killall -HUP named'
alias kl='open -a klogg.app --args -n '
alias klm='open -a klogg.app --args -m -s '
alias l.='ls -d .* '                                         # displays all directories beginning with .
alias la='ls -d .[!.]?*'
alias lc='ls -c1'
alias lcd='ls -c1 -rt | tail -1'
alias lcg='lc | egrep '
alias ld='ls -F | grep "/$" | sed "s/\/$//" | sort -f'       # display all directories, sorted/ignore case
alias let='less $(ls -rt | tail -1)'                         # open the most recent file in less
alias ll='ls -l'
alias locatedb='sudo /usr/libexec/locate.updatedb 2> /dev/null &'
alias log20="ssh admin@172.16.102.116"
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/  /'\'' -e '\''s/-/|/'\'' | less'
alias ls='ls -Gh'
alias lsock='sudo /usr/sbin/lsof -i -P'                      # lsock:  Display only open sockets
alias lst='sudo /usr/sbin/lsof -nP -i TCP'                   # lsockT: Display only open TCP sockets
alias lsu='sudo /usr/sbin/lsof -nP -i UDP'                   # lsockU: Display only open UDP sockets
alias lsv='virtualenv'                                       # list all commands
alias lsw='virtualenvwrapper'                                # list all commands
alias lt='ls -lrt'                                           # Display long output sorted with most recent last
alias ltl7k1='ssh -i ~/.ssh/id_rsa admin@10.201.178.56'
alias ltl7k2='ssh -i ~/.ssh/id_rsa admin@10.201.178.55'
alias ltl9k1='ssh admin@10.201.177.135'
alias ltt='lt | tail'
alias mandb='sudo /usr/libexec/makewhatis &'                 # Update the man pages
alias mchost37='ssh admin@172.16.102.37'
alias mchost38='ssh admin@172.16.102.38'
alias memHogsPs='ps wwmax -o pid,stat,vzise,rss,time,command | head -10'
alias memHogsTop='top -l 1 -o rsize | head -20'
alias mv='mv -iv'
alias myip='curl -s http://whatismyip.akamai.com/ && echo'   # myip: list external IP
alias n3kaci='ssh admin@172.16.145.144'
alias netCons='lsof -i'                                      # netCons:
alias ns1='ssh -l vincentricci 172.16.139.131'               # DNS master server in 9Kv topo
alias ns2='ssh -l vincentricci 172.16.139.132'               # DNS slave  server in 9Kv topo. also ldap server
alias nxapi='ssh nxapi-user@172.16.102.116'
alias openPorts='sudo lsof -i | grep LISTEN'                 # openPorts: All listening connections
alias otv10='ssh vricci@172.16.102.10'
alias otv11='ssh vricci@172.16.102.11'
alias otv9='ssh vricci@172.16.102.9'
alias ovnc='open vnc://ladmin@localhost:6900'
alias pdw='pwd'
alias people='ssh -i ~/.ssh/id_rsa vricci@people.cisco.com'
alias poap='ssh admin@10.31.121.39'
alias pt="env | grep -i | tr ':' '\n'"
alias rarpCORE='ssh admin@10.201.177.41'
alias rarpDIST1='ssh admin@10.201.177.114'
alias rarpDIST2='ssh admin@10.201.177.37'
alias rarpOTV1='ssh admin@10.201.182.11'
alias rarpOTV2='ssh admin@10.201.178.49'
alias rarpOTV3='ssh admin@10.201.177.33'
alias rarpOTV4='ssh admin@10.201.177.36'
alias rarpsource='ssh admin@10.201.178.175'
alias sa='cd && sort -k 2,2 ~/.bash_aliases > ~/.bash_aliases_sorted && command mv  ~/.bash_aliases_sorted ~/.bash_aliases && gam "sorted aliases" && gp'
alias sc='screen'
alias sha256sum='openssl dgst -sha256'
alias sl='ls'
alias smart9k1='ssh admin@10.31.121.32'
alias smart9k2='ssh admin@10.31.121.41'
alias smart='ssh admin@sj-dcrs-licensing.cisco.com'
alias spine41="ssh admin@172.16.102.40"
alias spine42="ssh admin@172.16.102.42"
alias spine51="ssh admin@172.16.102.51"
alias spine52="ssh admin@172.16.102.52"
alias sr='cd ~/Documents/Notebooks/Current-case && ltt'
alias ssh='TERM=xterm ssh'  # when remote term does not support colors
alias ssmp='ssh admin@172.16.31.3'
alias t1='tree -a -L 1'
alias t2='ssh admin@172.16.102.42'
alias t2='tree -a -L 2' 
alias t2host35='ssh admin@172.16.102.35'
alias t2host36='ssh admin@172.16.102.36'
alias t2host39='ssh admin@172.16.102.39'
alias t2leaf43='ssh admin@172.16.102.43'
alias t2leaf44='ssh admin@172.16.102.44'
alias t7k1='telnet 172.16.113.20 2060'
alias t7k2='telnet 172.16.113.19 2017'
alias tah='ssh admin@172.16.102.49'
alias tahhost36="ssh admin@172.16.102.36"
alias tahhost37='ssh admin@172.16.102.37'
alias tahhost38='ssh admin@172.16.102.38'
alias tahleaf45='ssh admin@172.16.102.45'
alias tahleaf46='ssh admin@172.16.102.46'
alias tahleaf47='ssh admin@172.16.102.47'
alias tahleaf47='ssh admin@172.16.102.47'
alias tahleaf48='ssh admin@172.16.102.48'
alias tahleaf48='ssh admin@172.16.102.48'
alias tahleaf49='ssh admin@172.16.102.49'
alias tahleaf49='ssh admin@172.16.102.49'
alias tcam9k-1="ssh admin@10.122.163.96"
alias tcam9k-2="ssh admin@10.122.164.138"
alias tcam9k-3="ssh admin@10.122.163.84"
alias tex="open -e"
alias topForever='top -l 9999999 -s 10 -o cpu'
alias topo='top -o CPU -O mem'                               # sort by top CPU utilization and then Memory
alias ttahleaf49='telnet 172.16.113.19 2008'
alias ttop='top -R -F -s 10 -o rsize'
alias viz='open -a "/Applications/Visual Studio Code.app"'
alias vncc="ssh -Nf -L 5903:127.0.0.1:5903 -l vricci sj-dcrs-centos8.cisco.com && open vnc://vricci@localhost:5903"
alias vnet='sudo vmnet-cli'
alias vnet='sudo vmnet-cli'                                  # VMWare cli to control DHCP and NAT
alias wget='curl -O'
alias wire='open -n /Applications/Wireshark.app'             # open multiple Wireshark sessions
