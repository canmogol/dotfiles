# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
export JDK_HOME="/usr/java/jdk1.7.0_51/" 

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

export DDS_ROOT=/DevelopmentEnvironment/licenses/dds/


export IBUS_ENABLE_SYNC_MODE=1

export SWT_GTK3=0

_byobu_sourced=1 . /usr/bin/byobu-launch 2>/dev/null || true
