#!/usr/bin/env bash

# Windows Version 

cd "$(dirname "${BASH_SOURCE}")";

# Temporary disable pulling any changes from origin 
# git pull origin master;


function doIt() {
    if [ ! -f ~/.bash ]; then
        # delete the contents of the existing .bash directory if it exists
        rm -r ~/.bash
        
        # copy the .bash directory and .bash_profile
        cp -r .bash ~/
        cp .bash_profile ~/

        # TODO copy the .gitignore files


        # copy the BFG jar file
        cp bfg-1.12.16.jar ~/
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