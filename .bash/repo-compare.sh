#!/bin/bash
#
#  PVCS Location:
#  SysAdmin/RemoteBackup
#
#  backup-remote-repos.sh
#
#  Author: Shane Walters
#  Date: 30-Nov-2017
#
#  Purpose:
#  Compares commit hases between the local bare repository and the offsite respository. 
#
# ---- Adding Additional Repositories to this script
# Add the repositories name in the repo_list array below. 
# Each origin repo MUST have a bare repository created on the remote location.
#   e.g.
#      cd //52MAHG-MP-806/Source\$/<repo>.git
#      git init --bare e//52mpls-mp-740/e\$/Keesler_Offsite_Backup/52mahg-mp-806/d/java/Source//52mpls-mp-740/e\$/Keesler_Offsite_Backup/52mahg-mp-806/d/java/Source/<repo>.git
#
# Each origin repo MUST have an alias named 'backup' created refercening a bare repository at the remote location.
#    e.g.
#     cd //52MAHG-MP-806/Source\$/<repo>.git
#     git remote add --mirror=push backup //52mpls-mp-740/e\$/Keesler_Offsite_Backup/52mahg-mp-806/d/java/Source/<repo>.git
#
#
#  
#
# Use:
#    cd /c/Users/1287921639E/.bash/
#    
#    To backup all repos defined in this script:
#    ./repo-compare.sh
#
#    To compare a single repo:
#    ./repo-compare.sh smapi.git
#
#
#----------------------------------------------------------------------------------------

# Define the path to the local repository directory.
LOCAL_PATH=//MAHG-MP-783v/source/



# Define the path to the remote backup repository directory
REMOTE_PATH=//52mpls-mp-740/e\$/Keesler_Offsite_Backup/52mahg-mp-806/d/java/Source/


# Create an array of the git repositories that will be compared.
repo_list=( 'AIMS.git'
             'AppDataRoaming-npm.git'
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
             'jobmatch.git'
             'metc.git'
             'METC_OracleProvider.git' 
             'mtldb.git'
             'pvcs-ttms.git'
             'sm-plateau.git'
             'smdb.git'
             'smapi.git'
             'sso.git'
             'ssodb.git'
             'ttms-software-license.git'
             'ttms-documentation.git'
             'UploadService.git'
           )



# define some colors using ANSI escape codes
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color



# print a hash line
printf -v line '%*s' 40
echo ${line// /-}

# output the current date
printf "\n" 
printf "Repo Compare Start: `date '+%Y-%m-%d %H:%M:%S'`"
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


#echo ${ARG1}


 
# Verifies that the repository exist at the remote location.
function checkRemoteRepo() {
  #echo Checking that remote repo $1 exists ...
  if [ -e $REMOTE_PATH/$1 ]; then
    #echo "    remote repository exist !"
    return
  else
    # remote does not exist
    return 1
  fi
}







# loop through each repository defined in the repo_list.
for i in ${repo_list[@]}
  do
     printf "\n"
	 echo ${line// /-}
	 echo Comparing Repo $i 
     echo ${line// /-}     
      
	  # call the function to check that remote repo exist
	  checkRemoteRepo $i
      status=$?
	  
	  #if the remote exist then compare last hashes
      if $(exit $status); then
          
          echo "    getting last commit hashes ..."

          cd $LOCAL_PATH/$i
          #LOCAL_HASH=$(git log -1 --pretty="%H" 2>$1)
          LOCAL_HASH=$(git log -1 --pretty="%H")

          

          cd $REMOTE_PATH/$i
          #cd $REMOTE_PATH/ebmtapi.git  # force a no-match condition
          #REMOTE_HASH=$(git log -1 --pretty="%H" 2>$1)
          REMOTE_HASH=$(git log -1 --pretty="%H")

          
          echo ''
          echo '     Local Hash:' $LOCAL_HASH
          echo '    Remote Hash:' $REMOTE_HASH
          printf "\n" 
    
          # compare the hashes
          if [ "$LOCAL_HASH" != "$REMOTE_HASH" ] ; then
            echo -e "     $RED $i Hashes do NOT match $NC"
          else
            echo -e "     $GREEN $i Hashes Match! $NC"
          fi
         
		 
       else
         echo " Remote repository $i could not be located."
       fi
 done


# output the elapsed runtime
printf "\n" 
echo ${line// /-}
printf "Repo Compare End: `date '+%Y-%m-%d %H:%M:%S'`"
printf "\n" 
duration=$SECONDS
echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."
printf "\n" 
echo ${line// /-}





