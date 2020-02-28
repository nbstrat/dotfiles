### Generating a client certificate using PowerShell

The testing certs generated from this example will be utilized in unit test of the application.
They would typically not need to be regenerated unless additional changes are required.
Information below is how to create and export the certs for the purpose of including in unit test. 


certmgr.msc


* Execute the two power shell statements below to generate the certificates.
* Certificates will be generated and automatically added to the cert store in Certificates - Current User Personal/Certificates. 

![CertMgr](/images/ss-cac-cert.png)



### Create The Certs:
```
$cert = New-SelfSignedCertificate -certstorelocation cert:\CurrentUser\My -Subject "C=US,O=U.S. Government,OU=DoD,CN=BOGUS.16.USER.1234567890123456"
```

```
$cert = New-SelfSignedCertificate -certstorelocation cert:\CurrentUser\My -Subject "C=US,O=U.S. Government,OU=DoD,CN=BOGUS.10.USER.1234567890"
```

### Export The Certs
Use the Windows CertMgr (certmgr.msc - Control Panel > User Accounts Manage user certificates) to locate 
and export each of the certificates individually using the following conditions using the export wizard:
* Export Private Key: No, do not export the pivate key 
* Export File Format: Base-64 encoded X.509

The exported certificates will need a file name and I suggest using the following to make it easier when referencing these certs within code:
```
bogus.10.user.cer
bogus.16.user.cer
```

After exporting the certs, the values can be checked by opening the file with a text editor and pasting the results into an online decoder such as [https://www.certlogik.com/decoder/](https://www.certlogik.com/decoder/).


#### CertReq Reference
[CertReq Reference](https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn296456(v%3Dws.11))
