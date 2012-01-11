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

# Export additional env vars
export JAVA_HOME=/usr/lib/jvm/default-java
export SCALA_HOME=/usr/local/typesafe-stack
#export ANT_HOME=$HOME/bin/utilities/apache/ant
export ANDROID_SDK=$HOME/bin/google/android/sdk
export ANDROID_NDK=$HOME/bin/google/android/ndk/r7

# make a GNU Stow env variable so you can refer to it in ./configure $STOW/appname
export STOW=/usr/local/stow

# Node paths from manual make install of node
# export PATH=$HOME/bin/Servers/Node/bin/node:$PATH
# export NODE_PATH=$HOME/bin/Servers/Node/bin/node:$HOME/bin/Servers/Node/bin/node/lib/node_modules

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    ##PATH="$PATH:/usr/lib/jvm/default-java/bin"
    PATH="$PATH:$HOME/bin/ide/eclipse/eclipse"
    PATH="$PATH:$SCALA_HOME"
    PATH="$PATH:$HOME/bin"
    #PATH="$PATH:$HOME/bin/google/go/bin"
    #PATH="$PATH:$HOME/bin/utilities/apache/ant/bin"
    #PATH="$PATH:$HOME/google/android/sdk/tools"
    #PATH="$PATH:$HOME/google/android/sdk/platform-tools"
    #PATH="$PATH:$HOME/.cabal/bin"
    #PATH="$PATH:/usr/local/rvm/bin"
    PATH="$PATH:."
fi

