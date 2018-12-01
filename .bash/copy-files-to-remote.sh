#!/bin/bash
#
#  PVCS Location:
#  TODO
#
#  copy-files-to-remote.sh
#
#  Author: Shane Walters
#  Date: 22-Oct-2017
#
#  Purpose:
#  Deliver files from build directory to delivery server.
#
#
# Use:
#    cd /c/Users/1287921639E/.bash/
#    
#    To backup all repos defined in this script:
#    ./copy-files-to-remote.sh
#
#
#
#----------------------------------------------------------------------------------------

# Define the path to the source file output directory.
BUILD_PATH=/j/Handoff/Shane/js/


# Define the path to the delivery directory
DELIVERY_PATH=//mahg-mp-787v/c\$/inetpub/wwwroot/shaneTestDirectory/


#--------------------------------------------------------------------
# Line Function and Start/End runtime outputs
#--------------------------------------------------------------------
# print a hash line
printf -v line '%*s' 40
echo ${line// /-}

# output the current date
printf "\n" 
printf "Copy To Remote Start: `date '+%Y-%m-%d %H:%M:%S'`"
SECONDS=0
printf "\n" 
echo ${line// /-}i


# echo the elapsed runtime
function showRunTime() {
  printf "\n" 
  echo ${line// /-}
  printf "Copy To Remote End: `date '+%Y-%m-%d %H:%M:%S'`"
  printf "\n" 
  duration=$SECONDS
  echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."
  printf "\n" 
  echo ${line// /-}
}

#--------------------------------------------------------------------
# Remote Path Check and Error Message
#--------------------------------------------------------------------
# Verifies that the remote location exists.
function checkRemotePath() {
  echo Checking that remote path exists ...
  if [ -e $DELIVERY_PATH/$1 ]; then
    echo "    remote path exist !"
    return
  else
    # remote path does not exist
    return 1
  fi
}

function remoteFailureMessage() {
  printf "\n"
  echo "Remote Location Not Found."
  echo "  The expected path was: ${DELIVERY_PATH}"
  echo "  Files were not transferred."
}


#--------------------------------------------------------------------
# Do the work....
#--------------------------------------------------------------------
 # Call the function to check that remote repo exist
 checkRemotePath
 status=$?
	  
  #if the remote path exist then execute the copy statement
  if $(exit $status); then
    
   
    #copy the build files to the remote path     
    cp $BUILD_PATH $DELIVERY_PATH -rv
    showRunTime
  
  else
    remoteFailureMessage
  fi


