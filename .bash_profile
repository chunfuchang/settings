# .bash_profile for the local home
#
 
#umask 027
umask 022 #tomcat executes as a different user
 
# Get the aliases and functions for both interactive and non-interactive
if [ -f ~/.bashrc ]; then
 . ~/.bashrc
fi
 
# User specific environment and startup programs
 
#The Terminal Hub project
#export LD_LIBRARY_PATH=$HOME/prj/lib:/home/potix/rd_shadow/prj/lib:$LD_LIBRARY_PATH
#export DRVSAMP=/home/potix/rd/linux/samples/devdrv
#export WOPSID=0
 
# Aliases that are applied only in the interactive mode
alias cp='cp -i'
alias mv='mv -i'
alias ls='ls -G -F -b'
alias ll='ls -la -G -F -b'
alias dir='ls --format=vertical'
alias gpum="git pull upstream master"
alias gpom="git pull origin master"
alias gpu7="git pull upstream 7.0"
alias gitadd="git add zkdoc/release-note zktest/src/archive/test2/config.properties"
alias eclipse="open -n ~/potix/eclipse_mac/eclipse.app"
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
#defaults write com.apple.finder QLEnableTextSelection -bool true; killall Finder
alias mvnit='mvn install -Dmaven.test.skip=true'

 
if [ A$TERM = Acygwin ]
then
 #Cygwin environment
 export HOME=/home/$USER
 export PS1='[\u@\h \W]\$ '
 
 alias cdr="cd $RHOME"
 cd
 date
else
 #Unix environment
 alias su='su -l'
fi
 
export BASH_ENV=$HOME/.bashrc
XPATH=$HOME/bin
export ANT_HOME="~/potix/apache_zip/ant"
export MVN_HOME="~/potix/apache_zip/maven"
export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_HOME="/Users/chunfu/potix/home/Chunfu/android-sdk-macosx"
 
PATH=$XPATH:/usr/sbin:$MVN_HOME/bin:$ANT_HOME/bin:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH

export PATH="$PATH":"~/.pub-cache/bin"

. cd -d #define the .cd function
 
#if [ -z ${DISPLAY} ]
#then
#  echo "Start X Window (y/n)?"
#  read runx
#  if [ \( a${runx} != an \) -a \( a${runx} != aN \) ]
#  then
#    startx
#  fi
#fi
 
#rm -f /usr/tomcat/logs/*

# if [ A$TERM = Acygwin ] ; then
# 	echo "ZK Build System Connect..."
# else
# 	echo "ZK Build System Disconnect..."
# export TERM='cygwin'
# fi
# Git branch and color variables in bash prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
#export PS1="\[\033[01;32m\]\h\[\033[01;34m\] \W\[\033[31m\]\$(parse_git_branch)\[\033[00m\] $ "

[[ -f "$HOME/.good_prompt" ]] && source "$HOME/.good_prompt"
#test -f ~/.git-completion.bash && . $_
test -f $(brew --prefix)/etc/bash_completion && . $(brew --prefix)/etc/bash_completion

function setv {
	osascript -e "set Volume $1"
}

function sshinit() {
eval `ssh-agent -s`
	ssh-add ~/.ssh/id_rsa
	ssh-add ~/.ssh/jenkins_rsa
	ssh-add ~/.ssh/jenkins2_rsa
}
alias sshjenkins='ssh zkoss@10.1.3.243'
alias sshjenkins2='ssh zkoss@10.1.3.211'

#$1 should be init or upgrade
function dbtool() {
	dart -c /Users/chunfu/prj/boeneo/boeneo/web/dev/dbtool.dart $1
}
function tool() {
	if [ "$1" = "n" ]; then
		/Users/chunfu/prj/boeneo/boeneo/tool/nl2c
	elif [ "$1" = "l" ]; then
		/Users/chunfu/prj/boeneo/boeneo/tool/l2c
	elif [ "$1" = "d" ]; then
		/Users/chunfu/prj/boeneo/boeneo/tool/d2j
	elif [ "$1" = "p" ]; then
		pub upgrade --no-packages-dir; dbtool upgrade;
	fi
}
