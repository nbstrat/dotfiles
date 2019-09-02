#!/usr/bin/env bash

# Windows Version 

cd "$(dirname "${BASH_SOURCE}")";

# Temporary disable pulling any changes from origin 
# git pull origin master;


function doIt() {
    if [ ! -f ~/.bash ]; then
        # copy the .bash directory and .bash_profile
        cp -r .bash ~/
        cp .bash_profile ~/
    fi
    # apply bash_profile changes to existing open shell
    source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;