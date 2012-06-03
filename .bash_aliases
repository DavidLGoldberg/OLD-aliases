#!/bin/bash

#*********************************************************
###################
#MY aliases!!!!
###################

#---
#ps
#---
alias psall='ps -ejHA'
alias psa='psall'
alias pswith='ps -A | grep'
alias psw='pswith'

#---
#lsof
#---
#make this work?
#alias checkport='`sudo lsof -i :$1`'

#---
#history
#---
#I still find this useful but try learning/using ctrl+r (can escape out)
alias historywith='history | grep'
alias hisw='historywith'

#---
#du
#---
alias du='du -h'

#---
#tar
#---
alias untar='tar xzvf'
alias ut='untar'
alias savetars='mv -n *.tar* ~/.tars/ 2> /dev/null;mv -n *.zip ~/.tars/ 2> /dev/null'
alias st='savetars'

#---
#vim
#---
#alias v='vim -g'
alias v='vim'

#---
#aptitude
#---
alias apts='aptitude search'

#---
#Dropbox
#---
#not sure I want to add ~/bin to my path etc.. so..
alias dbox='~/bin/dropbox.py'

#---
#general navigation
#---
alias up='cd ..'
alias u='up'
alias b='cd - > /dev/null'
alias c='clear'
alias cl='c;l'
alias x='exit'

#
#Really should make sure all of the following starts and restarts are right..but ok for now
#

#---
#nginx
alias startnginx='sudo /usr/local/nginx/sbin/nginx&'
#alias stopnginx='sudo kill -HUP `cat /usr/local/nginx/logs/nginx.pid`'
alias stopnginx='sudo killall nginx'
alias editnginx='sudo cp /usr/local/nginx/conf/nginx.conf /usr/local/nginx/conf/nginx.conf.bak$(datestamp);sudo vim /usr/local/nginx/conf/nginx.conf'
alias restartnginx='stopnginx;startnginx'
#---

#---
#memcached
alias stopmemcached='sudo killall memcached'
alias startmemcached='memcached -d -m 512 -l 127.0.0.1 -p 11211'
alias restartmemcached='stopmemcached;startmemcached'
#---

#---
#node
alias stopnode='sudo killall node'
alias startnode='sudo node /home/ubuntu/stamponme/app.js &'
alias restartnode='stopnode;startnode'
#---

#---
#systems
alias pssystems='ps -A | egrep "(nginx)|(memcached)|(node)|(prime_cache)"'
alias startstamponme='~/stamponme/start_stamponme'
alias stopstamponme='~/stamponme/stop_stamponme'
#---

#---
#Aliases
alias editaliases='vim ~/.bash_aliases'
alias ea='vim ~/.bash_aliases;. ~/.bashrc'
alias editvimaliases='vim ~/.vimrc'
alias aliasw='alias | grep'
alias eva='editvimaliases'
#---

#*****************************************************************
#SystemInstallSteps
alias datestamp='date "+%Y-%m-%d-%H-%M-%S"'
alias viewsteps='less ~/.system-install-steps-log'
alias vs='viewsteps'
alias editnextstep='cp ~/.system-install-steps-log ~/.system-install-steps/"`datestamp`";vim ~/.system-install-steps-log'
alias ens='editnextstep'
alias viewnextstep='tail -n1 ~/.system-install-steps-log'
alias vns='viewnextstep'
#this doesn't work for some stuff as it creates a new bash .. back ticks were breaking with quotes etc..
#alias nextstep='tail -n1 ~/.system-install-steps-log | bash'
alias nextstep='`tail -n1 ~/.system-install-steps-log`'
#alias nextstep='`tail -n1 ~/.system-install-steps-log`;~/.system-install-steps-log>"*"'
alias ns='nextstep'
#*****************************************************************


#---
#---
#---
#MY TELEPORTS!
alias gostamponme='cd ~/stamponme'
alias go='stamponme'
alias gocss='cd ~/stamponme/public/bm/css'
alias gojs='cd ~/stamponme/public/bm/js'
alias goviews='cd ~/stamponme/views/bookmarklet'
#---
#---
#---



#-----------------
#For desktop env:
#-----------------

#---
#cd burning
#---
#alias makecdimage='mkisofs -r -J -o'
#alias burncdimage='cdrecord -v speed=12 dev=/dev/cdrw1 -data'
#alias makedvdimage='mkisofs -r -J -dvd-video -o'
#alias burndvdimage='cdrecord -v speed =

#---
#google
#---
#alias google='firefox http://www.google.com/webhp?complete=1'
#alias g='google'

#alias shutr='sudo shutdown -r now'
#alias shuth='sudo shutdown -h now'

