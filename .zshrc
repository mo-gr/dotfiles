# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell-mo"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-extras brew lein mvn osx ant vi-mode encode64 lol urltools safe-paste last-working-dir)
# terminalapp makes trouble in the prompt

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/share/npm/bin:/Users/mo/Coding/play-2.0:/Users/mo/Coding/scala/bin:/usr/local/bin:/Users/mo/.bin:/Users/mo/Coding/apache-maven/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/mo/.rvm/bin:/usr/local/Cellar/ruby/1.9.3-p194/bin

# bind jj to go to vi normal mode (same as ESC)
bindkey -M viins 'jj' vi-cmd-mode

# show the vi mode in the right of the terminal
function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    RPS2=$RPS1
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

alias ql="qlmanage -p 2>/dev/null"
alias wr="open -a WriteRoom"
alias med="open -a Marked"
alias ia="open -a iA\ Writer"
alias serve="python -m SimpleHTTPServer"
alias mplayer="/Applications/MPlayer\ OSX\ Extended.app/Contents/Resources/Binaries/mpextended.mpBinaries/Contents/mpextended-mt.mpBinaries/Contents/MacOS/mplayer"

dan() { open dash://man:$1 }

alias fixopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'

# npm path
export PATH=$PATH:/Users/mo/Coding/sandbox/cloudserver/node_modules/.bin

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_25.jdk/Contents/Home

export PS1="👻  $PS1"

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
