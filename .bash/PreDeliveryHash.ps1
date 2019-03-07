<# 
.SYNOPSIS
Author: Shane Walters March 2019

.DESCRIPTION
Creates an output file containing the filename, creation date, and SHA256 hash of the files found in the 
specified reelase folder. 

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
add any helpful notes here

.EXAMPLE
From a Remote Desktop Connection on the server
Open Power Shell
cd to the script directory
cd E:\DELIVERY\scm\CM_Scripts\Release 

.\PreDeliveryHash.ps1 <RELEASE>
.\PreDeliveryHash.ps1 16_08_00

Output the specific help information from the header
Get-Help .\PreDeliveryHash.ps1 -full
Get-Help .\PreDeliveryHash.ps1 -parameter RELEASE

#> 


param (
 [Parameter(Mandatory= $true)] 
 [string] $RELEASE
)

# TODO: Move script to 700 server and update Path to report server location
#TODO Chagne to drive path when testing on 700 server
#$LOGDIR = "E:\DELIVERY\Release\hash-test\Output_Files\Directory_Logs\"
$LOGDIR = "\\52mahg-mp-700\e$\DELIVERY\Release\hash-test\Output_Files\Directory_Logs\"


#TODO: Remove archive\16_xx_xx from PATHDIR 
$PATHDIR = "\\52mahg-mp-700\e$\DELIVERY\Release\archives\16_xx_xx\"
$PKGDIR = $PATHDIR + $RELEASE + '\Package\'
$DIR = $PKGDIR + '*'

$OUTPUTPATH = $LOGDIR
$OUTPUTFILE = $PATHDIR + $RELEASE + '\Package\' + $RELEASE + '_PreDeliveryHash.log'

   Write-Host "Calculating Hash of Deliverables for " $PKGDIR
   Get-ChildItem -Path $DIR -Include *.exe -File |
     Sort-Object Name |
     Select-Object Name,CreationTime,@{n='SHA256';ex={(Get-FileHash -Algorithm SHA256 $_.fullname).hash}} |
     Format-Table -AutoSize -Wrap |  
     Out-File -FilePath $OUTPUTFILE
 


