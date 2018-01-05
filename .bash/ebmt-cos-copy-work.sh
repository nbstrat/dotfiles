#!/bin/bash
#
#  PVCS Location:
#  
#  ebmt-cos-copy-work.sh
#
#  Author: Shane Walters
#  Date: 07-Dec-2017
#
#  Purpose:
#  
#  Setup: 
#     1) Copy this file to your .bash directory
#          c:\Users\<you>\.bash 
#     2) TODO: Create an alias in the .bash/alias.sh  
#     3)Initialize a git repository within these PVCS directories:
#         cd /c/pvcs/eBMT/
#         git init
#     4)  create a .gitignore file to ignore files that we don't want to reference 
#        
#
#  Use:
#    Manually perform a GET operation using VM PVCS
#    commit -m 'Files pulled from PVCS'
#    cd /c/Users/1287921639E/.bash/
#    ebmt-cos-copy-work.sh
#
#
#  NOTE: White-space file differences will be reflected as a file change. The initial comparisons
#    should double-check this issue and either
#     a) commit the working file into the repository and accept that the white space change will
#        continue to be a problem when comparing changes from a PVCS pull to the working directory
#     
#   
#----------------------------------------------------------------------------------------

# delete the eBMT TM PVCS directories
#rm -rf /c/PVCS/eBMT/Database_Server/Build
# copy the eBMT database build working code to the PVCS directory
#cp -R /c/_projects/ebmtdb/build/ /c/PVCS/eBMT/Database_Server/Build




# EBMTAPI
rm -rf /c/PVCS/eBMT/Web_Server_Source/API_Source/EBMTAPI
rm -rf /c/PVCS/eBMT/Web_Server_Source/API_Source/EBMTAPI.Tests
rm -rf /c/PVCS/eBMT/Web_Server_Source/API_Source/libs
rm -rf /c/PVCS/eBMT/Web_Server_Source/API_Source/packages


# copy the eBMT API working code to the PVCS directory
cp -rf /c/_projects/ebmtapi/EBMTAPI/ /c/PVCS/eBMT/Web_Server_Source/API_Source/EBMTAPI
cp -rf /c/_projects/ebmtapi/EBMTAPI.Tests/ /c/PVCS/eBMT/Web_Server_Source/API_Source/EBMTAPI.Tests
cp -rf /c/_projects/ebmtapi/libs/ /c/PVCS/eBMT/Web_Server_Source/API_Source/libs
cp -rf /c/_projects/ebmtapi/packages/ /c/PVCS/eBMT/Web_Server_Source/API_Source/packages
echo 'ebmt API copy completed'



# copy the eBMT APP working code to the PVCS directory
#cp -R /c/_projects/ebmtapp/ /c/PVCS/eBMT/Web_Server_Source/APP_Source






