alias ..='cd ..'
alias 56leaf57='ssh ansible@14.2.86.57'
alias 56leaf58='ssh ansible@14.2.86.58'
alias 7k1='ssh ansible@14.2.86.59'
alias 7k2='ssh ansible@14.2.86.60'
alias 7k3="ssh admin@10.201.177.16"
alias 7k4="ssh admin@10.201.177.15"
alias 7kflow="ssh admin@10.122.176.46"
alias 9kv='ssh -i ~/.ssh/id_rsa admin@172.16.139.9'        # NXOSv in 9Kv topo
alias N35K_FHR='ssh admin@10.122.176.155'
alias N35K_LHR2='ssh admin@10.122.161.119'
alias N35K_LHR='ssh admin@10.122.176.50'
alias N35K_RP='ssh admin@10.122.176.19'
alias N3K_L2='ssh admin@10.122.176.37'
alias acl='python /Users/admin/Development/PYTHON/Python3.7/acls/aclgen.py'
alias ans='cd /Users/vricci/Documents/Development/Ansible/ansible-sj-static && pipenv shell'
alias ansi2='ssh -t -l admin rtp-dcrs-ansible.cisco.com -t /bin/zsh -ic "ansi"'
alias ansi='ssh -t -l admin 14.2.86.117 -t /bin/zsh -ic "ansi"'  # Run remote alias with pseudo-terminal - https://www.cyberciti.biz/faq/use-bash-aliases-ssh-based-session/
alias as='cd ~/Library/services'
alias axhost1='ssh 10.122.176.11'
alias axleaf5='ssh 10.122.176.95'
alias axleaf6='ssh 10.122.176.65'
alias axleaf7='ssh 10.122.176.52'
alias axspine1='ssh 10.122.176.97'
alias axspine2='ssh 10.122.176.29'
alias bgw31="ssh ansible@14.2.86.31"
alias bgw32="ssh ansible@14.2.86.32"
alias bgw33="ssh ansible@14.2.86.33"
alias bgw34="ssh ansible@14.2.86.34"
alias bl="brew list --formula "
alias brewup='brew update ; brew upgrade ; brew cleanup ; brew doctor'
alias bs="brew search "
alias c='clear'
alias cacert='ssh ca-user@rtp-dcrs-ca.cisco.com'
alias calo='lftp calo:calo@172.16.11.29'
alias calobru='lftp calo:calo@calo-bru-fs.cisco.com'
alias calomx='lftp admin@10.31.104.72'
alias calor='lftp calo:calo@calo-rtp-fs.cisco.com'
alias calorcdn="lftp calo:calo@172.18.108.26"
alias cdp='cd ~/Documents/devlopment/PYTHON'
alias cent7='ssh 10.201.255.63'
alias cent9="ssh vricci@192.168.56.9"
alias centos9="ssh 172.16.17.9"
alias cent="ssh vricci@172.16.31.8"
alias centr="ssh admin@rtp-dcrs-centos8.cisco.com"
alias chx='chmod +x'
alias clean="egrep -v '(#|^$)' "
alias cpuHogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'
alias csr1='ssh 192.168.56.101'
alias dcnm1='ssh sysadmin@sj-dcrs-dcnm1.cisco.com'
alias dcnm2='ssh sysadmin@sj-dcrs-dcnm2.cisco.com'
alias dcnm="ssh sysadmin@rtp-dcrs-dcnm.cisco.com"
alias ddu='du -sh * | sort -hr | head -20'
alias dev='cd ~/Documents/Development && tree -L 1'
alias deva='cd ~/Documents/Development/Ansible && tree -L 1'
alias devb='cd ~/Documents/Development/Bash && tree -L 1'
alias devp='cd ~/Documents/Development/PYTHON && tree -L 1'
alias devv='cd ~/Documents/Development/Vagrant'
alias dhcpconfig='sudo /Applications/VMware\ Fusion.app/Contents/Library/vmnet-cli --configure'
alias dhcpstart='sudo /Applications/VMware\ Fusion.app/Contents/Library/vmnet-cli --start'
alias dhcpstop='sudo /Applications/VMware\ Fusion.app/Contents/Library/vmnet-cli --stop'
alias dkrmall='docker rm $(docker ps -qa)'
alias dkrmiall='docker rmi $(docker images -qa)'
alias dkstopall='docker stop $(docker ps -q)'
alias dp='docker ps'
alias dpa='docker ps -a'
alias epip='python -m ensurepip --upgrade'
alias flushDNS='sudo dscacheutil -flushcache && sudo killall -HUP mDNSResponder'
alias frbgw96='ssh ansible@14.2.86.96'
alias frbgw97='ssh ansible@14.2.86.97'
alias fw='sudo /usr/libexec/ApplicationFirewall/socketfilterfw --listapps'
alias fx2bgw93='ssh ansible@14.2.86.93'
alias fx2bgw94='ssh ansible@14.2.86.94'
alias fxleaf99='ssh ansible@14.2.86.99'
alias gam='git commit -am'
alias gh='git hist'
alias gl2='git log -p -2'
alias gns3='ssh gns3@172.16.139.135'
alias gns3rp="ssh -i ~/.ssh/id_rsa gns3@14.2.86.100"
alias golf='ssh ansible@14.2.86.12'
alias grh='git reset HEAD'
alias gs='git status'
alias gsv='git status -v'
alias gx='ssh admin@10.122.165.214'
alias healeaf93='ssh ansible@14.2.86.93'
alias healeaf94='ssh ansible@14.2.86.94'
#alias host1='ssh -l admin 172.16.139.200' # POAP file server and DHCP (VMWAre)
alias host1='ssh -l admin 172.16.125.200' # POAP file server and DHCP (VMWAre)
alias idle="python -m idlelib "
alias idrive='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/'
alias ipen0='ipconfig getpacket en0'
alias ipen3='ipconfig getpacket en3'
alias ise3='ssh ansible@rtp-dcrs-ise3.cisco.com'
alias ise='ssh ansible@sj-dcrs-ise.cisco.com'
alias k8='ssh 10.80.59.118'
alias k8n1='ssh -l student -i ~/.ssh/id_rsa 10.80.59.128'
alias k8n2='ssh -l student -i ~/.ssh/id_rsa 10.80.59.138'
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
alias log20="ssh ansible@14.2.86.116"
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
alias mchost37='ssh ansible@14.2.86.37'
alias mchost38='ssh ansible@14.2.86.38'
alias memHogsPs='ps wwmax -o pid,stat,vzise,rss,time,command | head -10'
alias memHogsTop='top -l 1 -o rsize | head -20'
alias mv='mv -iv'
alias myip='curl -s http://whatismyip.akamai.com/ && echo'   # myip: list external IP
alias n3kaci='ssh admin@172.16.145.144'
alias nav3172="ssh -l admin 172.20.11.251"
alias navoro="ssh spadmin@172.20.0.3"
alias navub="ssh 172.20.0.9"
alias netCons='lsof -i'                                      # netCons:
alias ns1='ssh -l vincentricci 172.16.139.131'               # DNS master server in 9Kv topo
alias ns2='ssh -l vincentricci 172.16.139.132'               # DNS slave  server in 9Kv topo. also ldap server
alias nxapi='ssh nxapi-user@172.16.31.8'
alias old='ssh 10.19.50.197'
alias openPorts='sudo lsof -i | grep LISTEN'                 # openPorts: All listening connections
alias otv10='ssh vricci@14.2.86.10'
alias otv11='ssh vricci@14.2.86.11'
alias otv9='ssh vricci@14.2.86.9'
alias ovnc='open vnc://ladmin@localhost:6900'
alias path="echo ${PATH} | tr ':' '\n'"
alias pdw='pwd'
alias people='ssh -i ~/.ssh/id_rsa vricci@people.cisco.com'
alias pi=ipython
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
alias ricci="/usr/bin/ssh -Nf -L 5999:localhost:5900 -i ~/.ssh/id_rsa vincentricci@192.168.10.11 && open vnc://vincentricci@localhost:5999"
alias rrs='ssh -l ansible 14.2.86.102'
alias rs='/usr/bin/ssh -F ~/.ssh/config -i ~/.ssh/id_rsa -l vincentricci 192.168.10.11'
alias sa='cd && sort -k 2,2 ~/.bash_aliases > ~/.bash_aliases_sorted && command mv  ~/.bash_aliases_sorted ~/.bash_aliases && gam "sorted aliases" && gp'
alias sc='screen'
alias sha256sum='openssl dgst -sha256'
alias sl='ls'
alias smart9k1='ssh admin@10.31.121.32'
alias smart9k2='ssh admin@10.31.121.41'
alias smart='ssh admin@sj-dcrs-licensing.cisco.com'
alias smartr='ssh -i ~/.ssh/ansible_id_rsa -l admin rtp-dcrs-smart.cisco.com'
alias span9K1='ssh -l admin 10.122.160.209'
alias spine41="ssh ansible@14.2.86.41"
alias spine42="ssh ansible@14.2.86.42"
alias spine51="ssh ansible@14.2.86.51"
alias spine52="ssh ansible@14.2.86.52"
alias spine95='ssh ansible@14.2.86.95'
alias sr='cd ~/Documents/Notebooks/Current-case && ltt'
alias ssmp='ssh admin@172.16.31.3'
alias t1='tree -a -L 1'
alias t2='ssh ansible@14.2.86.42'
alias t2='tree -a -L 2'
alias t2host35='ssh ansible@14.2.86.35'
alias t2host36='ssh ansible@14.2.86.36'
alias t2host39='ssh ansible@14.2.86.39'
alias t2leaf43='ssh ansible@14.2.86.43'
alias t2leaf44='ssh ansible@14.2.86.44'
alias t3='tree -L 3 '
alias t7k1='telnet 172.16.113.20 2060'
alias t7k2='telnet 172.16.113.19 2017'
alias tah='ssh ansible@14.2.86.49'
alias tahhost36="ssh ansible@14.2.86.36"
alias tahhost37='ssh ansible@14.2.86.37'
alias tahhost38='ssh ansible@14.2.86.38'
alias tahhost50='ssh 14.2.86.50'
alias tahleaf45='ssh ansible@14.2.86.45'
alias tahleaf46='ssh ansible@14.2.86.46'
alias tahleaf47='ssh ansible@14.2.86.47'
alias tahleaf47='ssh ansible@14.2.86.47'
alias tahleaf48='ssh ansible@14.2.86.48'
alias tahleaf48='ssh ansible@14.2.86.48'
alias tahleaf49='ssh ansible@14.2.86.49'
alias tcam9k-1="ssh admin@10.122.163.96"
alias tcam9k-2="ssh admin@10.122.164.138"
alias tcam9k-3="ssh admin@10.122.163.84"
alias tex="open -e"
alias topForever='top -l 9999999 -s 10 -o cpu'
alias topo='top -o CPU -O mem'                               # sort by top CPU utilization and then Memory
alias ttahleaf49='telnet 172.16.113.19 2008'
alias ttop='top -R -F -s 10 -o rsize'
alias ucs='ssh -l ucspe 172.16.125.2'
alias viz='open -a "/Applications/Visual Studio Code.app"'
alias vnc9='ssh -Nf -L 5901:127.0.0.1:5901 -l vricci 192.168.56.9 && open vnc://vricci@localhost:5901'
alias vncc2="ssh -Nf -L 5901:127.0.0.1:5901 -l vricci rtp-dcrs-centos8.cisco.com && open vnc://vricci@localhost:5901"
alias vncc="ssh -Nf -L 5903:127.0.0.1:5903 -l vricci rtp-dcrs-ansible.cisco.com && open vnc://vricci@localhost:5903"
alias vncca="ssh -Nf -L 5904:127.0.0.1:5904 -l admin rtp-dcrs-ansible.cisco.com && open vnc://admin@localhost:5904"
alias vnet='sudo vmnet-cli'
alias vnet='sudo vmnet-cli'                                  # VMWare cli to control DHCP and NAT
alias wget='curl -O'
alias wire='open -n /Applications/Wireshark.app'             # open multiple Wireshark sessions
alias wolbgw100='ssh -l ansible 14.2.86.100'
alias wolbgw101='ssh -l ansible 14.2.86.101'
alias nat9k='ssh -l admin 10.122.164.121'
alias natTx='ssh -l admin 10.122.164.73'
alias natRx='ssh -l admin 10.122.164.79'
alias isi3k='ssh 192.168.128.5'
alias ras='ssh -l vricci 192.168.10.223'
alias smartr6="ssh -l admin rtp-dcrs-smart-v6.cisco.com"
alias UC_FW='ssh 10.122.162.156'
alias UC_Spine='ssh 10.122.162.181'
alias UC_Leaf42='ssh 10.122.162.251'
alias UC_Rx='ssh 10.122.162.237'
alias UC_Leaf8-5='ssh 10.122.162.151'
alias UC_VM1='ssh 10.122.158.92'
alias UC_VM2='ssh 10.122.158.191'
alias ASR_SPB='ssh 10.122.176.77'
alias ASR_SPA='ssh 10.122.163.167'
alias ASR_LEAF3A='ssh 10.122.163.33'
alias ASR_LEAF3B='ssh 10.122.163.69'
alias ASR_LEAF2A='ssh 10.122.163.88'
alias ASR_LEAF2B='ssh 10.122.163.112'
alias NAS_3548_13='ssh 10.201.178.181'
alias NAS_3548_14='ssh 10.201.178.140'
alias NAS_3548_Host='ssh 10.201.178.134'
alias UC_FX2='ssh 10.62.154.146'
alias isi3k='ssh 192.168.128.5'
alias goo_vm='ssh 10.122.158.197'
alias goo_fx1='ssh 10.122.177.22'
alias goo_fx2='ssh 10.122.176.236'
alias rakuten_fx='ssh 10.201.178.244'
alias rakuten_fx_2='ssh 10.201.178.203'
alias vnccc='ssh -Nf -L 5906:127.0.0.1:5906 -l admin rtp-dcrs-centos8.cisco.com && open vnc://admin@localhost:5906'
alias myradkit='37op-mkj7-gln7'
alias Fretta_VOQ='ssh -l admin 10.88.174.91'
alias Fretta_9K1='ssh -l admin 10.88.174.89'
alias Fretta_9K2='ssh -l admin 10.88.174.90'
alias Fretta_9K3='ssh -l admin 10.88.37.113'
alias 5k1='ssh 10.122.177.47'
alias 5k2='ssh 10.122.177.54'
alias 9k1='ssh 10.122.177.20'
alias 9k2='ssh 10.122.177.60'
alias int_95='ssh -l admin 10.201.178.172'
alias int_93='ssh -l admin 10.201.178.205'
alias int_36R='ssh -l admin 10.201.178.141'
alias rpi="ssh 192.168.10.223"
alias AMZ_7K1='ssh -l admin 10.122.176.134'
alias AMZ_7K2='ssh -l admin 10.122.176.140'
alias DUKE_7K1='ssh admin@10.122.165.177'
alias DUKE_7K2='ssh admin@10.122.165.198'
alias DUKE_5K2='ssh admin@10.122.165.155'
alias DUKE_5K1='ssh admin@10.122.165.152'
alias OIC_FX1='ssh -l admin 10.122.176.52'
alias OIC_FX2='ssh -l admin 10.122.176.102'
alias OIC_FX3='ssh -l admin 10.122.176.48'
alias OIC_FX4='ssh -l admin 10.122.176.87'
alias OIC_5K='ssh admin@10.122.176.24'
