<# 
.SYNOPSIS
Author: Shane Walters March 2019

.DESCRIPTION
Creates an output file containing the filename, creation date, and SHA256 hash of the files delivered to each specific server.

The HASH comparison of files prior to delivery to files actually delivered satisfies the following STIG vulnerability.
Vul ID: V-70369
Rule ID: SV-84991r2_rule
STIG ID: APSC-DV-003140
CAT II Finding 

.PARAMETER RELEASE
The release number for the particular release in the format xx_xx_xx.
The value coincides with the folder name for the particular release and is used as part of the path when executing this script. 
The value is also used as part of the output log file. 

.NOTES
This script is executed after delivery.

.EXAMPLE
From a Remote Desktop Connection on the server
Open Power Shell
cd to the directory containing this script
cd E:\DELIVERY\scm\CM_Scripts\Release 

.\PostDeliveryHash.ps1 <RELEASE>
.\PostDeliveryHash.ps1 16_08_00

Output the specific help information from the header
Get-Help .\PostDeliveryHash.ps1 -full
Get-Help .\PostDeliveryHash.ps1 -parameter RELEASE

#> 


param (
 [Parameter(Mandatory= $true)] 
 [string] $RELEASE
)


#TODO: Remove archives\16_xx_xx from PATHDIR 
$PATHDIR = "E:\DELIVERY\Release\archives\16_xx_xx\"
$PKGDIR = $PATHDIR + $RELEASE + '\Package\'
$OUTPUTFILE = $PKGDIR + $RELEASE + '_PostDeliveryHash.log'

# path to directory that deliverables are copied to during a release
$DIR = 'd$\User\Package\*'
$SRVPATH = ''

# Array of servers - last entry for each array must not include a trailing comma
$serverListKeesler = 'MAHG-MP-707v',   #AT Database
                      'MAHG-MP-800v',   #AT Authoring App Server
                      'mahg-mp-801v',   #AT Delivery App Server
                       'mahg-mp-705v',   #Evaluation Web Server
                       '52mahg-mp-722',   #ICI App Server
                       '52mahg-mp-786',   #ICIS App Server
                       '52mahg-mp-724',   #ICIS Sharepoint Server
                       '52mahg-mp-725',   #ICIS Sharepoint Server
                       '52mahg-mp-817',   #ICIS Sharepoint Server
                       '52mahg-mp-818',   #ICIS Sharepoint Server
                       '52mahg-mp-760',   #ICIS Sharepoint Server
                       'mahg-mp-701v',    #Interface Server
                       'mahg-mp-706v',    #Report Server
                       'mahg-mp-711v',    #LMS App Server
                       '52mahg-mp-730',   #MTL App Server
                       'mahg-mp-716v',    #SSO Database Server
                       '52mahg-mp-714',   #SSO App Server / WebHelp Server
                       'mahg-mp-702v',   #Datamart Server
                       'mahg-mp-703v'   #Cognos BI 10 Server


#TODO: Add logic for LAFB / KAFB
$serverList = $serverListKeesler

$resultsArray = @()


# Get-ChildItem -Path '\\MAHG-MP-792v\d$\User\Package\*' -Include *.exe -File |
#      Sort-Object Name |
#      Select-Object Name,CreationTime,@{n='SHA256';ex={(Get-FileHash -Algorithm SHA256 $_.fullname).hash}} |
#      Format-Table -AutoSize -Wrap
     

    #  Set-Content $OUTPUTFILE 'FRED WAS HERE'

foreach ($server in $serverList) {
    $SRVPATH = '\\'+ $server + '\' + $DIR
  # Write-Host $SRVPATH
  # Add-Content $OUTPUTFILE $SRVPATH
   
   
   $resultsArray += Get-ChildItem -Path $SRVPATH -Include *.exe -File |
     Sort-Object Name |
     Select-Object Name,CreationTime,@{n='SHA256';ex={(Get-FileHash -Algorithm SHA256 $_.fullname).hash}} 
     
 
# Add-Content $OUTPUTFILE $resultsArray
}

# Add-Content $OUTPUTFILE $resultsArray

#  foreach ($x in $resultsArray) {
#      Write-Host $x.Name
#      Write-Host $x.CreationTime
#      Write-host $x.SHA256
#  }

 $resultsArray | ForEach {[PSCustomObject]$_} | Format-Table -AutoSize | Out-File -FilePath $OUTPUTFILE 
