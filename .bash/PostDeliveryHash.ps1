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

.PARAMETER SITE
Parameter sets the list of servers the script will be execute agains. 
Expected values are KAFB or LAFB.
The value is also used as part of the output log file. 


.NOTES
This script is executed after delivery.

.EXAMPLE
From a Remote Desktop Connection on the server
Open Power Shell
cd to the directory containing this script
cd E:\DELIVERY\scm\CM_Scripts\Release 

.\PostDeliveryHash.ps1 <RELEASE> <SITE>
.\PostDeliveryHash.ps1 16_08_00 KAFB
.\PostDeliveryHash.ps1 16_08_00 LAFB

Output the specific help information from the header
Get-Help .\PostDeliveryHash.ps1 -full
Get-Help .\PostDeliveryHash.ps1 -parameter RELEASE

#> 


param (
 [Parameter(Mandatory= $true)] 
 [string] $RELEASE,
 [Parameter(Mandatory= $true)] 
 [string] $SITE
)

[console]::BufferWidth = 4096

#TODO: Remove archives\16_xx_xx from PATHDIR 
$PATHDIR = "E:\DELIVERY\Release\archives\16_xx_xx\"
$PKGDIR = $PATHDIR + $RELEASE + '\Package\'
# Output file should use <RELEASE>_<SITE>_xxx format. 
$OUTPUTFILE = $PKGDIR + $RELEASE + '_' + $SITE + '_PostDeliveryHash.log'

# path to directory that deliverables are copied to during a release
$DIR = 'd$\User\Package\*'
$SRVPATH = ''

# Array of Keesler servers - last entry of array must not include a trailing comma
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

# Array of Lackland servers - last entry of array must not include a trailing comma
$serverListLackland = '52MPLS-MP-729',   #ICIS/Evaluation Database COOP
                      'MPLS-MP-703v',   #SM-BMT/eBMT/MTL Shared Database Server
                      'MPLS-MP-724v',   #Student Management/MTL Database COOP
                       '52MPLS-MP-729',   #Automated Testing Database
                       '52mahg-mp-722',   #AT Authoring App Server
                       '52MPLS-MP-701',   #AT Delivery App Server
                       'MPLS-MP-715v',   #Evaluation Web Server
                       '52MPLS-MP-727',   #ICIS Web App Server COOP
                       'MPLS-MP-716v',   #ICIS Sharepoint Server COOP
                       'MPLS-MP-717v',   #ICIS Sharepoint Server COOP
                       'MPLS-MP-718v',   #ICIS Sharepoint Server COOP
                       'MPLS-MP-719v',   #ICIS Sharepoint Server COOP
                       'MPLS-MP-731v',    #Interface Server
                       '52MPLS-MP-705',    #Job Match Database Server
                       'MPLS-MP-707v',    #Job Match App Server
                       'MPLS-MP-728v',    #Report Server
                       'MPLS-MP-720v',    #eBMT Web App Server
                       'MPLS-MP-723v',    #LMS App Server
                       'MPLS-MP-702v',    #SM BMT App Server
                       '52MPLS-MP-710',   #MTL App Server
                       'MPLS-MP-729v',    #SSO Database Server COOP
                       '52MPLS-MP-709',   #SSO App Server / WebHelp Server COOP
                       'MPLS-MP-704v',   #BMT and eBMT ColdFusion Web Server
                       'MPLS-MP-712v',   #Datamart Server
                       'MPLS-MP-713v'   #Cognos BI 10 Server



if ($SITE -eq "KAFB") {
   Write-Host "Executing against Keesler servers."
   $serverList = $serverListKeesler
}
elseif ($SITE -eq "LAFB") {
    Write-Host "Executing against Lackland servers." 
    $serverList = $serverListLackland
  }
else  {
  Write-Host "---------------------------------"  
  Write-Host "Expected SITE input parameter not provided. 
  Execute  Get-Help .\PostDeliveryHash.ps1 -full for additional information"
  Write-Host "---------------------------------"
}

# array for holding the results from each server queried
$hashResults = @()

foreach ($server in $serverList) {
    # establish the server path 
    $SRVPATH = '\\'+ $server + '\' + $DIR
    Write-Host $SRVPATH
   
   # CM request to add host server to output to facilitate comparing hashes where a deliverable
   # is delivered to multiple locations such as Production and COOP servers.'
   # CM request to use LastWriteTime instead of CreationTime.
   $hashResults += Get-ChildItem -Path $SRVPATH -Include *.exe -File |
     Sort-Object Name |
     Select-Object Name,LastWriteTime,@{n='SHA256';ex={(Get-FileHash -Algorithm SHA256 $_.fullname).hash}},@{n='HostServer';ex={($server)}} 
}

# output the results sorting by file name.
  $hashResults | ForEach {[PSCustomObject]$_} |
     Sort-Object -Property Name |
     Format-Table -AutoSize |
     Out-File -FilePath $OUTPUTFILE 
