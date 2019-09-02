#!/usr/bin/env bash

# Windows Version 

cd "$(dirname "${BASH_SOURCE}")";

# Temporary disable pulling any changes from origin 
# TODO git pull origin master;


function doIt() {
    if [ ! -f ~/.bash ]; then
        # Delete the contents of the existing .bash directory if it exists.
        rm -r ~/.bash
        
        # Copy the .bash directory and .bash_profile.
        cp -r .bash ~/
        cp .bash_profile ~/

        # TODO .gitconfig

        #

        # Copy the .gitignore_global file; 
        # .gitignore will not be needed in the HOME directory since contents are being copied via bootstrap.
        # .gitattributes will not be needed in the HOME directory for same reason.
        # This revamp is too eliminate keeping a .git directory in the HOME directory.
        cp .gitignore_global ~/

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