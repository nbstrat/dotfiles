

<# 
.SYNOPSIS
write a synopsis here

.DESCRIPTION
write a description here

.PARAMETER SITE
The site location that script will be execute at. Expected values are KAFB or LAFB.


.NOTES
add any helpful notes here

.EXAMPLE
From a Remote Desktop Connection on the server
Open Power Shell
cd to the script directory
cd E:\DELIVERY\scm\CM_Scripts\Release 

.\GetHash.ps1 KAFB
.\GetHash.ps1 LAFB

Output the specific help information from the header
Get-Help .\GetHash.ps1 -full
Get-Help .\GetHash.ps1 -parameter SITE

#> 


param (
 [Parameter(Mandatory= $true)] 
 [string] $RELEASE
)

# Set output width to max integer to prevent ellipsis output
$OUTPUTWIDTH = 2147483647

#TODO: Directories must exist prior to outputing the log file.
#$RELEASE = "xx_xx_xx"
#$RELEASE = "hash-test"
$LOGDIR = "c:\delivery-logs\"

#$LOGDIR = "C:\Users\1287921639E\.bash\hash-output\"
#$RELEASE = "xx_xx_xx"
$OUTPUTPATH = $LOGDIR+$RELEASE
$OUTPUTFILE = ""


   # Report Server
   #TODO: Need a try-catch block in the event the server cannot be connected to.
   # TODO: Output of memory exception when attempting to get hash from inetpub directory.
    Write-Host "Reports Server Inetpub"
   $OUTPUTFILE = $OUTPUTPATH + '_Report_Server_MAGH-MP-706v.log'
   Get-ChildItem -Path c:\inetpub\wwwroot\ttmsreportsapp\* -Recurse `
    -Exclude *.xml,*.tmp,*.txt,*.pdf | 
     Sort-Object Directory, Name |
     Select-Object @{n='RootDirectory     ';ex={$_.Directory.name}},Name,CreationTime,@{n='SHA256';ex={(Get-FileHash -Algorithm SHA256 $_.fullname).hash}} | 
     Out-File -Width $OUTPUTWIDTH -FilePath $OUTPUTFILE
  #  $OUTPUTFILE = $OUTPUTPATH + '_Report_Server_MAGH-MP-706v_Config.log'
  #  Get-ChildItem -Path c:\_projects\custom_reports\`{tomcat_home`}\conf\* -Recurse |
  #    Sort-Object Directory, Name |
  #    Select-Object @{n='RootDirectory     ';ex={$_.Directory.name}},Name,CreationTime,@{n='SHA256';ex={(Get-FileHash -Algorithm SHA256 $_.fullname).hash}} | 
  #    Out-File -Width $OUTPUTWIDTH -FilePath $OUTPUTFILE
  #  $OUTPUTFILE = $OUTPUTPATH + '_Report_Server_MAGH-MP-706v_webapps.log'
  #  Get-ChildItem -Path c:\_projects\custom_reports\`{tomcat_home`}\webapps\* -Recurse |
  #    Sort-Object Directory, Name |
  #    Select-Object @{n='RootDirectory     ';ex={$_.Directory.name}},Name,CreationTime,@{n='SHA256';ex={(Get-FileHash -Algorithm SHA256 $_.fullname).hash}} | 
  #    Out-File -Width $OUTPUTWIDTH -FilePath $OUTPUTFILE 
