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

   # TODO: Add each CI for Keesler deliverables
   # Reports
   # Note: Reports gets files from two locations; The { bracket will need to be escaped with tilde.
   Write-Host "Reports Server Inetpub"
   $OUTPUTFILE = $OUTPUTPATH + '_hash.test.txt'
   Get-ChildItem -Path c:\_projects\custom_reports\_deliverables,c:\_projects\custom_reports\`{tomcat_home`} -Recurse `
    -Exclude *.xml,*.tmp,*.txt,*.pdf | 
     Sort-Object Directory, Name |
     Select-Object @{n='RootDirectory     ';ex={$_.Directory.name}},Name,CreationTime,@{n='SHA256';ex={(Get-FileHash -Algorithm SHA256 $_.fullname).hash}} | 
     Out-File -Width $OUTPUTWIDTH -FilePath $OUTPUTFILE

    


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



