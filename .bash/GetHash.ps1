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
Open Power Shell
cd to the script directory
(I am running it from my .bash directory)
cd $home/.bash 

.\GetHash.ps1 KAFB
.\GetHash.ps1 LAFB

Output the specific help information from the header
Get-Help .\GetHash.ps1 -full
Get-Help .\GetHash.ps1 -parameter SITE

#> 


param (
 [Parameter(Mandatory= $true)] 
 [string] $SITE
)

# Set output width to max integer to prevent ellipsis output
$OUTPUTWIDTH = 2147483647

$LOGDIR = "C:\Users\1287921639E\.bash\hash-output\"
$RELEASE = "xx_xx_xx"
$OUTPUTPATH = $LOGDIR+$RELEASE
$OUTPUTFILE = ""

if ($SITE -eq "KAFB") {
    Write-Host "KAFB"

   #N:\scm\CM_Scripts\Release\Directory_Listings_MASTER.bat
   # TODO: Add AT Database

   # TODO: Add AT Authoring App Server

   # TODO: Add AT Delivery App Server

   # TODO: Add ICIS Database
   # TODO: Add ICIS Web server
   # TODO: Add ICIS Sharepoint Server
   
   # TODO: Add EVAL Database Server
   # TODO: Add EVAL Web Server
   # TODO: Add EVAL Perception5
   # TODO: Add EVAL Perception5 templates and resources

   # TODO: Add SM Database
   # TODO: Add LM and BMT ICIS Web server

# TODO: Add Interface server

   # Report Server
    Write-Host "Reports Server Inetpub"
   $OUTPUTFILE = $OUTPUTPATH + '_Report_Server_MAGH-MP-706v.log'
   Get-ChildItem -Path c:\_projects\custom_reports\_deliverables\* -Recurse `
    -Exclude *.xml,*.tmp,*.txt,*.pdf | 
     Sort-Object Directory, Name |
     Select-Object @{n='RootDirectory     ';ex={$_.Directory.name}},Name,CreationTime,@{n='SHA256';ex={(Get-FileHash -Algorithm SHA256 $_.fullname).hash}} | 
     Out-File -Width $OUTPUTWIDTH -FilePath $OUTPUTFILE
   $OUTPUTFILE = $OUTPUTPATH + '_Report_Server_MAGH-MP-706v_Config.log'
   Get-ChildItem -Path c:\_projects\custom_reports\`{tomcat_home`}\conf\* -Recurse |
     Sort-Object Directory, Name |
     Select-Object @{n='RootDirectory     ';ex={$_.Directory.name}},Name,CreationTime,@{n='SHA256';ex={(Get-FileHash -Algorithm SHA256 $_.fullname).hash}} | 
     Out-File -Width $OUTPUTWIDTH -FilePath $OUTPUTFILE
   $OUTPUTFILE = $OUTPUTPATH + '_Report_Server_MAGH-MP-706v_webapps.log'
   Get-ChildItem -Path c:\_projects\custom_reports\`{tomcat_home`}\webapps\* -Recurse |
     Sort-Object Directory, Name |
     Select-Object @{n='RootDirectory     ';ex={$_.Directory.name}},Name,CreationTime,@{n='SHA256';ex={(Get-FileHash -Algorithm SHA256 $_.fullname).hash}} | 
     Out-File -Width $OUTPUTWIDTH -FilePath $OUTPUTFILE 


# TODO: Add Cognos Datamart Server
# TODO: Add Cognos BI Server

 # TODO: Add MTL Database Server
   # TODO: Add MTL Web Server

# TODO: Add SSO Database Server
   # TODO: Add Portal SSO Web Server

# TODO: Add WebHelp Server
  }

elseif ($SITE -eq "LAFB") {
    Write-Host "Input was LAFB"
  }
else  {
  Write-Host "---------------------------------"  
  Write-Host "Expected input parameter not provided. 
  Execute  Get-Help .\GetHash.ps1 -full for additional information"
  Write-Host "---------------------------------"
}



