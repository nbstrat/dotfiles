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
#  cds to origin repo location directory and pushes changes of each repo listed to the backup repository location offsite.
#
# ---- Adding Additional Repositories to this script
# Add the repositories name in the repo_list array below. 
# Each origin repo MUST have a bare repository created on the remote location.
#   e.g.
#      cd //52MAHG-MP-806/Source\$/<repo>.git
#      git init --bare //52mpls-mp-740/e\$/Keesler_Offsite_Backup/52mahg-mp-806/d/java/Source/<repo>.git
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
#    ./backup-remote-repos.sh
#
#    To backup a single repo:
#    ./backup-remote-repos.sh smapi.git
#
#
#----------------------------------------------------------------------------------------

# Define the path to the local repository directory.
LOCAL_PATH=//52MAHG-MP-806/Source\$/


# Define the path to the remote backup repository directory
REMOTE_PATH=//52mpls-mp-740/e\$/Keesler_Offsite_Backup/52mahg-mp-806/d/java/Source/


# Create an array of the git repositories that will be backed up to the remote location.
repo_list=( 'AIMS.git'
             'AppDataRoaming-npm.git'
             'atdb.git'
             'atws.git'
             'bmt.git'
             'cognos.git'
             'custom_reports.git'
             'datagrid.git'
             'ebmt.git'
             'ebmtapi.git'
             'ebmtapp.git'
             'ebmtdb.git'
             'eocdb.git'
             'ICIS.git'
             'mtldb.git'
             'pvcs-ttms.git'
             'sm.git'
             'smdb.git'
             'smapi.git'
             'sso.git'
             'ssodb.git'
             'ttms-documentation.git'
           )


# print a hash line
printf -v line '%*s' 40
echo ${line// /-}

# output the current date
printf "\n" 
printf "Remote Backup Start: `date '+%Y-%m-%d %H:%M:%S'`"
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
  echo Checking that remote repo $1 exists ...
  if [ -e $REMOTE_PATH/$1 ]; then
    echo "    remote repository exist !"
    return
  else
    # remote does not exist
    return 1
  fi
}


# Outputs backup failure message
function backupFailureMessage() {
  printf "\n"
  echo "Git Backup Failed."
  echo " Possible reasons are that the alias 'backup' has not been defined on the local repository."
  echo " To verify that a backup alias has been defined:"
  echo "    cd ${LOCAL_PATH}${1}"
  echo "    git remote -v"
  echo " To define a backup alias, use the following example:"
  echo "    git remote add --mirror=push backup ${REMOTE_PATH}${1}"

}





# loop through each repository defined in the repo_list.
for i in ${repo_list[@]}
  do
     printf "\n"
	 echo ${line// /-}
	 echo Processing $i 
     echo ${line// /-}     
      
	  # call the function to check that remote repo exist
	  checkRemoteRepo $i
      status=$?
	  
	  #if the remote exist then execute the push statement
      if $(exit $status); then
                   cd $LOCAL_PATH/$i
          echo "    performing garbage collection on $i"
          git gc --auto
          echo "    pushing changes to $i remote backup"
          git push backup

		  # output additional information in the event the backup failed.
		  if [ $? != 0 ] ; then
		     backupFailureMessage $i
		  fi

       else
         echo " Remote repository $i could not be located."
       fi
 done


# output the elapsed runtime
printf "\n" 
echo ${line// /-}
printf "Remote Backup End: `date '+%Y-%m-%d %H:%M:%S'`"
printf "\n" 
duration=$SECONDS
echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."
printf "\n" 
echo ${line// /-}



# TODO Implement logging output.
#function wl() {
#	echo $(date +"[%Y/%m/%d %T %z] ") $* >> $HOME/worklog.txt
#}


