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
#export JAVA_HOME=/usr/lib/jvm/default-java
export JAVA_HOME=/usr/lib/jvm/jdk1.6.0_30
export SCALA_HOME=/usr/local/typesafe-stack
export HASKELL_HOME=/opt/haskell/ghc/7.0.4
export HASKELL_PLATFORM=/opt/haskell/platform/2011.4.0.0
export ANT_HOME=/opt/apache/ant/1.8.2
#export MAVEN_HOME=/opt/apache/maven/2.2.1
export MAVEN_HOME=/opt/apache/maven/3.0.3
export ANDROID_SDK=$HOME/bin/google/android/sdk
export ANDROID_NDK=$HOME/bin/google/android/ndk/r7 
export ECLIPSE_HOME=$HOME/bin/ide/eclipse
export RBENV_HOME=$HOME/.rbenv
export GOROOT=$HOME/bin/google/go
export GOBIN=$GOROOT/bin
export LESSCSS=$HOME/bin/node/node_modules/less

# make a GNU Stow env variable so you can refer to it in ./configure $STOW/appname
export STOW=/usr/local/stow

#PATH="$PATH:/usr/lib/jvm/default-java/bin"
PATH="$PATH:$ANT_HOME/bin"
PATH="$PATH:$MAVEN_HOME/bin" 
PATH="$PATH:$ECLIPSE_HOME"
PATH="$PATH:$SCALA_HOME/bin"
PATH="$PATH:$ANDROID_HOME/tools"
PATH="$PATH:$ANDROID_HOME/platform-tools"
PATH="$PATH:$HASKELL_HOME/bin"
PATH="$PATH:$HASKELL_PLATFORM/bin"
PATH="$PATH:$RBENV_HOME/bin"
PATH="$PATH:$GOBIN"
PATH="$PATH:$LESSCSS/bin"

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$PATH:$HOME/bin" PATH="$PATH:." 
fi 

# enable rbenv shims and autocompletion
eval "$(rbenv init -)"
