# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend


# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias atlantic='ssh -D 9898 can@209.208.26.69'
alias free='top -l 1 | head -n 10 | grep PhysMem'
alias dprojects='pushd ~/projects/'
alias dcanmogol='pushd ~/projects/canmogol'
alias dangular2='pushd ~/projects/canmogol/angular2'

##PS1='\[\033[31m\]\u\[\033[01;30m\]@\[\033[36m\]\h \[\033[01;37m\]\w \[\033[01;35m\]\$ \[\033[00m\]'

export PATH="/usr/local/sbin:$PATH"

###export JAVA_HOME="/usr/local/jdk"
###export CLASS_PATH=.:/usr/local/jdk
###export JDK_HOME=/usr/local/jdk
###export PATH=/usr/local/jdk/bin:$PATH:/usr/local/git/bin

#export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
#export PATH=/Users/alicanmogol/bin/apache-maven-3.0.5/bin:$PATH
export MAVEN_HOME=/Users/alicanmogol/bin/apache-maven-3.3.1
export M2_HOME=/Users/alicanmogol/bin/apache-maven-3.3.1
export PATH=/Users/alicanmogol/bin/apache-maven-3.3.1/bin:$PATH

#export CLASS_PATH=.:/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home/
#export CLASSPATH=.:/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home/
#export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home/"
#export JDK_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home/

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home"
export JDK_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"



test -f ~/.git-completion.bash && . $_

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home/"

export PATH=/Users/alicanmogol/bin/scala-2.11.1/bin:/Users/alicanmogol/bin/sbt/bin:$PATH

##
# Your previous /Users/alicanmogol/.bash_profile file was backed up as /Users/alicanmogol/.bash_profile.macports-saved_2014-12-22_at_14:44:04
##

# MacPorts Installer addition on 2014-12-22_at_14:44:04: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

export PATH=/Library/Frameworks/Python.framework/Versions/3.4/bin:/opt/local/bin:/opt/local/sbin:/Users/alicanmogol/bin/scala-2.11.1/bin:/Users/alicanmogol/bin/sbt/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin:/Users/alicanmogol/.rvm/bin:/usr/local/bin:/usr/local/mysql/bin:/Users/alicanmogol/bin/apache-maven-3.2.5/bin

#export M2_HOME=/Users/alicanmogol/bin/apache-maven-3.2.5/bin
export MAVEN_HOME=/Users/alicanmogol/bin/apache-maven-3.3.1
export M2_HOME=/Users/alicanmogol/bin/apache-maven-3.3.1
export PATH=/Users/alicanmogol/bin/apache-maven-3.3.1/bin:$PATH
export PATH=$PATH:/usr/local/bin/



#sudo sysctl -w kern.maxfiles=65536
#sudo sysctl -w kern.maxfilesperproc=65536
ulimit -n 65536 65536
alias atlantic='ssh -D 9898 can@209.208.26.69'
alias free='top -l 1 | head -n 10 | grep PhysMem'
alias connect='sshfs -p 22 canm@10.0.1.4:/DevelopmentEnvironment/ ~/DevelopmentEnvironment/ -oauto_cache,reconnect,defer_permissions,noappledouble,negative_vncache,volname=DevelopmentEnvironment'
alias connect-workspace='sshfs -p 22 canm@10.0.1.4:/home/canm/workspace/ ~/workspace/ -oauto_cache,reconnect,defer_permissions,noappledouble,negative_vncache,volname=workspace'

if [ -f ~/.git-completion.bash ]; then
	  . ~/.git-completion.bash
fi



alias __git_ps1="git branch 2>/dev/null | grep '*' | sed 's/* \(.*\)/(\1)/'"


# color names for readibility
reset=$(tput sgr0)
bold=$(tput bold)
black=$(tput setaf 0)
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
magenta=$(tput setaf 5)
cyan=$(tput setaf 6)
white=$(tput setaf 7)
user_color=$green
[ "$UID" -eq 0 ] && { user_color=$red; }
PS1="\[\e]0;\w\a\]\[$reset\][\[$blue\]\t\[$reset\]]\[$user_color\]\u@\h(\l)\\[$white\]\$(__git_ps1):\[$cyan\]\w\[$reset\][\[$yellow\]\$?\[$reset\]]\[$white\]\\[$reset\]\$\n\[$red\]→\[$reset\] "
#PS1="\[\e]0;\w\a\]\[$reset\][\[$blue\]\t\[$reset\]]\[$user_color\]\u@\\\[$white\]:\[$cyan\]\w\[$reset\][\[$yellow\]\$?\[$reset\]]\[$white\]\\[$reset\]\$\n\[$red\]→\[$reset\] "

export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced
export LSCOLORS=ExFxBxDxCxegedabagacad


alias htop='sudo htop'



export NVM_DIR="/Users/alicanmogol/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm





