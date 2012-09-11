PATH=/usr/local/bin:~/.bin:~/Coding/apache-maven/bin:$PATH

#set vi mode
set -o vi
bind '"\C-j"':yank-last-arg

export CLICOLOR

#alias
alias ls="ls -G"
alias ll="ls -l"
alias ql="qlmanage -p 2>/dev/null"
alias wr="open -a WriteRoom"
alias med="open -a Marked"
alias ia="open -a iA\ Writer"
alias serve="python -m SimpleHTTPServer"
alias mplayer="/Applications/MPlayer\ OSX\ Extended.app/Contents/Resources/Binaries/mpextended.mpBinaries/Contents/mpextended-mt.mpBinaries/Contents/MacOS/mplayer"
alias please=sudo


export PS1='\[\e[1;32m\]\h:\w$(__git_ps1 "(%s)") \u\$ \[\e[0m\]'

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# ENVIRONMENT
# DO NOT FORGET TO SET ENVIRONMENTS IN ~/.MacOSX/environment.plist AS WELL!!!
export JAVA_HOME=/Library/Java/JavaVirtualMachines/1.6.0_29-b11-402.jdk/Contents/Home/
export M2_HOME=~/Coding/apache-maven
export MAVEN_REPOSITORY=~/.m2/repository
export SCALA_HOME=~/Coding/scala

export PATH=$SCALA_HOME/bin:$PATH

[[ -s "/Users/mo/.rvm/scripts/rvm" ]] && source "/Users/mo/.rvm/scripts/rvm"  # This loads RVM into a shell session.

export PLAY_HOME=~/Coding/play-2.0
export PATH=$PLAY_HOME:$PATH
