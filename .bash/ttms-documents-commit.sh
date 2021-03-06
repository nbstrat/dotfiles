#!/bin/bash
#
#  PVCS Location:
#  SysAdmin/RemoteBackup
#
#  ttms-documents-commit.sh
#
#  Author: Shane Walters
#  Date: 23-Feb-2018
#
#  Purpose:
#  TTMS Documents git working directory is a shared drive and requires a periodic add to index and commit.
#  This script will:
#  1) cd to the TTMS Documents directory
#  2) add all changed and untracked changes to the index
#  3) commit
#  The commit will automatically push to origin via a post commit hook
#
#  
#
# Use:
#    cd /c/Users/1287921639E/.bash/
#    
#    ./ttms-documents-commit.sh
#
#
#
#----------------------------------------------------------------------------------------

    # Define the path to the working directory
    WORKING_DIR=/j/TTMS_Documentation



    # print a dash line
    printf -v line '%*s' 40
    echo ${line// /-}

    # output the current date
    printf "\n" 
    printf "TTMS Documents Commit Start: `date '+%Y-%m-%d %H:%M:%S'`"
    SECONDS=0
    printf "\n" 
    echo ${line// /-}

    

    printf "\n"
    printf "changing to $WORKING_DIR directory \n"
    cd $WORKING_DIR
    printf "Present Working Directory: $PWD \n"
    echo ${line// /-}


    printf "\n"
    echo "    adding to index ..." 
    git add --all
    echo "    committing ..."
    git commit -m 'TTMS documentation changes'


    # output the elapsed runtime
    printf "\n" 
    echo ${line// /-}
    printf "TTMS Documents Commit End: `date '+%Y-%m-%d %H:%M:%S'`"
    printf "\n" 
    duration=$SECONDS
    echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."
    printf "\n" 
    echo ${line// /-}




