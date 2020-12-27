alias "ttahleaf49=telnet 172.16.113.19 2008"
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
alias act='conda activate ansible-sj-static && cd ~/Documents/Development/PYTHON/ansible-sj-static'
alias bgw31="ssh admin@172.16.102.31"
alias bgw32="ssh admin@172.16.102.32"
alias bgw33="ssh admin@172.16.102.33"
alias bgw34="ssh admin@172.16.102.34"
alias brewup='brew update ; brew upgrade ; brew cleanup ; brew doctor'
alias c='clear'
alias calo='lftp calo:calo@172.16.11.29'
alias calomx='lftp admin@10.31.104.72'
alias calor='lftp calo@172.18.108.26'
alias calorcdn="lftp calo:calo@172.18.108.26"
alias cdl="cd $(ls -c1 -rt | tail -1)"
alias chx='chmod +x'
alias cp='cp -iv'
alias cpuHogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'
alias ddu='du -sh * | sort -hr | head -20'
alias dhcpconfig='sudo /Applications/VMware\ Fusion.app/Contents/Library/vmnet-cli --configure'
alias dhcpstart='sudo /Applications/VMware\ Fusion.app/Contents/Library/vmnet-cli --start'
alias dhcpstop='sudo /Applications/VMware\ Fusion.app/Contents/Library/vmnet-cli --stop'
alias dkrmall="docker rm '$(docker ps -qa)'"
alias dkrmiall="docker rmi '$(docker images -qa)'" 
alias dkstopall="docker stop '$(docker ps -q)'"
alias flushDNS='sudo dscacheutil -flushcache'
alias fw='sudo /usr/libexec/ApplicationFirewall/socketfilterfw --listapps'
alias gns3='ssh gns3@172.16.139.135'
alias gns3rp="ssh -i ~/.ssh/id_rsa gns3@172.16.102.100"
alias golf='ssh admin@172.16.102.12'
alias host1='ssh -l vincentricci 172.16.17.140'             # CentOS7
alias ipen0='ipconfig getpacket en0'
alias ipen3='ipconfig getpacket en3'
alias ise='ssh -c aes256-cbc,aes128-cbc admin@172.16.31.5'
alias killdns='sudo killall -HUP named'
alias l.='ls -d .* '                                         # displays all directories beginning with .
alias la='ls -d .[!.]?*'
alias lc='ls -c1'
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
alias openPorts='sudo lsof -i | grep LISTEN'                 # openPorts: All listening connections
alias otv10='ssh vricci@172.16.102.10'
alias otv11='ssh vricci@172.16.102.11'
alias otv9='ssh vricci@172.16.102.9'
alias ovnc='open vnc://ladmin@localhost:6900'
alias pdw='pwd'
alias people='ssh -i ~/.ssh/id_rsa vricci@people.cisco.com'
alias poap='ssh admin@10.31.121.39'
alias rarpCORE='ssh admin@10.201.177.63'
alias rarpDIST1='ssh admin@10.201.177.114'
alias rarpDIST2='ssh admin@10.201.177.28'
alias rarpOTV1='ssh admin@10.201.182.11'
alias rarpOTV2='ssh admin@10.201.178.49'
alias rarpOTV3='ssh admin@10.201.177.33'
alias rarpOTV4='ssh admin@10.201.177.6'
alias rarpsource='ssh admin@10.201.178.175'
alias sc='screen'
alias sha256sum='openssl dgst -sha256'
alias sl='ls'
alias smart9k1='ssh admin@10.31.121.32'
alias smart9k2='ssh admin@10.31.121.41'
alias spine41="ssh admin@172.16.102.40"
alias spine42="ssh admin@172.16.102.42"
alias spine51="ssh admin@172.16.102.51"
alias spine52="ssh admin@172.16.102.52"
alias t2='ssh admin@172.16.102.42'
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
alias ttop='top -R -F -s 10 -o rsize'
alias vnet='sudo vmnet-cli'
alias vnet='sudo vmnet-cli'                                  # VMWare cli to control DHCP and NAT
alias wget='curl -O'
alias wire='open -n /Applications/Wireshark.app'             # open multiple Wireshark sessions
alias bl="brew list --formula "
alias bs="brew search "
