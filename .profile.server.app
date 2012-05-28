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

export JAVA_HOME=/usr/lib/jvm/jdk1.6.0_30
export SCALA_HOME=/opt/scala/typesafe-stack
export ANT_HOME=/opt/apache/ant/1.8.2
export MAVEN_HOME=/opt/apache/maven/2.2.1
export SBT_HOME=~/bin/build/sbt

#don't need $JAVA_HOME/bin in path since update-alteratives links it to /usr/bin
#PATH="$PATH:$JAVA_HOME/bin"
PATH="$PATH:$SCALA_HOME/bin"
PATH="$PATH:$ANT_HOME/bin"
PATH="$PATH:$MAVEN_HOME/bin" 
PATH="$PATH:$SBT_HOME"

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
