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

# simple example to get started from
#find -type f -name '*.txt' -exec grep -l "Mirrored from www.delphibasics.co.uk" {} \;


# rename all the delphibasics files
find -type f -name '*.txt' -exec grep -l "Mirrored from www.delphibasics.co.uk" {} \; -exec bash -c 'mv "$0" "$0.delphibasics.htm"' {} \;


# rename all the datamodeler xml files
# find -type f -name '*.txt' -exec grep -l "object.property.auto.CommentInRDBMSChanged" {} \; -exec bash -c 'mv "$0" "$0.datamodeler.xml"' {} \;

# rename all the older datamodeler xml files
# find -type f -name '*.txt' -exec grep -l "object.property.auto.GeneratedInRDBMS" {} \; -exec bash -c 'mv "$0" "$0.datamodeler2.xml"' {} \;



# rename all the database document files
#find -type f -name '*.txt' -exec grep -l "../dbdoc.css" {} \; -exec bash -c 'mv "$0" "$0.db.doc.html"' {} \;


# rename pdf files
#find -type f -name '*.txt' -exec grep -l "%PDF" {} \; -exec bash -c 'mv "$0" "$0.pdf"' {} \;


# rename gif files
#find -type f -name '*.txt' -exec grep -l "GIF89" {} \; -exec bash -c 'mv "$0" "$0.gif"' {} \;


# rename unittest/devtest documents
#find -type f -name '*.txt' -exec grep -l "_rels/workbook.xml.rels" {} \; -exec bash -c 'mv "$0" "$0.xlsx"' {} \;


# rename spreadsheets
#find -type f -name '*.txt' -exec grep -l "Test Conducted By:          	Shane Walters" {} \; -exec bash -c 'mv "$0" "$0testdoc.doc"' {} \;

