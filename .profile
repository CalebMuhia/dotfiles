# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    ##PATH="$PATH:/usr/bin/java"
    ##PATH="$PATH:/usr/bin/scala"
    PATH="$PATH:$HOME/bin"
    PATH="$PATH:$HOME/bin/Go/go/bin"
    PATH="$PATH:$HOME/bin/Google/Android/sdk/tools"
    PATH="$PATH:$HOME/bin/Google/Android/sdk/platform-tools"
    PATH="$PATH:/usr/local/rvm/bin"
    PATH="$PATH:."
fi

# Export additional env vars
#export JAVA_HOME=/usr/bin/java/
#export SCALA_HOME=/usr/bin/scala/
export ANDROID_SDK=$HOME/bin/Google/Android/sdk/

# Node paths from manual make install of node
# export PATH=$HOME/bin/Servers/Node/bin/node:$PATH
# export NODE_PATH=$HOME/bin/Servers/Node/bin/node:$HOME/bin/Servers/Node/bin/node/lib/node_modules
