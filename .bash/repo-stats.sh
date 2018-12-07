#!/bin/bash
#
#  PVCS Location:
#  TBD
#
#  repo-stats.sh
#
#  Author: Shane Walters
#  Date: 07-Dec-2018
#
#  Purpose:
#  Provides the following status for each repository defined in the repo array:
#	1) Number of commits for all branches by Author
#   2) List of branches that have not been merged into the master branches
#   3) ??
#  
#
# Use:
#    cd /c/Users/1287921639E/.bash/
#    
#    Get stats for all defined repositories:
#    ./repo-stats.sh
#
#    Get stats for a specific repository:
#    ./repo-stats.sh smapi.git
#
#
#----------------------------------------------------------------------------------------

# Define the path to the local repository directory.
LOCAL_PATH=//MAHG-MP-783v/source/

# Create an array of the git repositories that will be backed up to the remote location.
repo_list=( 'AIMS.git'
             'AppDataRoaming-npm.git'
             'apiauth.git'
             'atdb.git'
             'atws.git'
             'bmt.git'
             'cognos.git'
             'custom_reports.git'
             'datagrid.git'
             'ebmt-sched.git'
             'ebmtapi.git'
             'ebmtapp.git'
             'ebmtdb.git'
             'eocdb.git'
             'eocws.git'
             'ICIS.git'
             'icisdb.git'
             'ICIS_OracleProvider.git'
             'installshieldprojects.git'
             'jobmatch.git'
             'metc.git'
             'METC_OracleProvider.git' 
             'mtldb.git'
             'sm-plateau.git'
             'smdb.git'
             'smapi.git'
             'sso.git'
             'ssodb.git'
             'ttms-software-license.git'
             'UploadService.git'
           )


# print a hash line
printf -v line '%*s' 40
echo ${line// /-}

# output the current date
printf "\n" 
printf "Stats Processing Start: `date '+%Y-%m-%d %H:%M:%S'`"
SECONDS=0
printf "\n" 
echo ${line// /-}



printf "\n\n"
printf "cd to $LOCAL_PATH directory \n"
cd $LOCAL_PATH
printf "Present Working Directory: $PWD \n"
printf "\n" 
echo ${line// /-}


# Redefine the repo_list to the passed in repo name 
# when it is passed in as a parameter. 
# Defaults to the repo_list array when the parameter is not present 
ARG1=${1-${repo_list[@]}}
repo_list=(${ARG1})


# loop through each repository defined in the repo_list.
for i in ${repo_list[@]}
  do
     printf "\n"
	 echo ${line// /-}
	 echo Processing $i 
     echo ${line// /-}     
      
	  # call the function to check that remote repo exist
	  #checkRemoteRepo $i
      #status=$?
	  
	 
          cd $LOCAL_PATH/$i
     echo "Last Commit:"
	 git log -1 --pretty=format:"%ar, %h - %an : %s"
     printf "\n"

	 echo "Count of commits (all branches) by Author"
     git shortlog -s -n --all --no-merges
	 printf "\n"

	 echo " Branches that have not been merged into master"
	 git branch --no-merged master -a
	 printf "\n"
 done


# output the elapsed runtime
printf "\n" 
echo ${line// /-}
printf "Stats Processing End: `date '+%Y-%m-%d %H:%M:%S'`"
printf "\n" 
duration=$SECONDS
echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."
printf "\n" 
echo ${line// /-}