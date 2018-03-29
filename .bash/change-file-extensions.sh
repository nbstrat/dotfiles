#!/bin/bash
#
#  PVCS Location:
#  SysAdmin/RemoteBackup
#
#  change-file-extensions.sh
#
#  Author: Shane Walters
#  Date: 29-Mar-2018
#
#  Purpose:
#  Fix a terrible mess....

# Step 1:
# create a working directory and cd to it
# execute the following to extract all dangling commits as text file outputs into the working directory
for blob in $(git fsck --lost-found | awk '$2 == "blob" { print $3 }'); do git cat-file -p $blob > $blob.txt; done


# Use:
#    cd /c/Users/1287921639E/.bash/
#    
#    do this:
#    ./change-file-extensions.sh
#
#    
#
#----------------------------------------------------------------------------------------

# FILES=/c/Users/1287921639E/Documents/blob-hack/*.txt
DIR_PATH=/c/Users/1287921639E/Documents/blob-hack/


#for f in $FILES
#do
#  echo "Processing $f file..."
  # take action on each file. $f store current file name
  
  # display the contents of the file
  #cat $f

  

  # mv "$f" "${f%.txt}.txt"
   
#done

cd $DIR_PATH

find -type f -name '*.txt' -exec grep -l "Mirrored from www.delphibasics.co.uk" {} \;

#for file in $(find . -name "*.txt" -exec grep -l "Mirrored from www.delphibasics.co.uk" {})
#do 
#  echo mv $file `echo $file | sed s/_test.rb$/_spec.rb/`
#done
