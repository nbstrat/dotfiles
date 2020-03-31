
Disabling `verifyclientcertrevocation` to use CAC card in local Visual Studio development environment.

Open Powershell with elevated (Administrator) permissions.

### Example 
* This will show you every port assigned

`netsh http show sslcert`

* This will limit the results to a single port
 
 `netsh http show sslcert ipport=0.0.0.0:44307`


### Web App
---------------

`netsh http show sslcert ipport=0.0.0.0:44307`

```powershell
IP:port                      : 0.0.0.0:44307
    Certificate Hash             : 61d34f532da121bbab64723c4871e72c92f03735
    Application ID               : {214124cd-d05b-4309-9af9-9caa44b2b74a}
    Certificate Store Name       : MY
    Verify Client Certificate Revocation : Enabled
    Verify Revocation Using Cached Client Certificate Only : Disabled
    Usage Check                  : Enabled
    Revocation Freshness Time    : 0
    URL Retrieval Timeout        : 0
    Ctl Identifier               : (null)
    Ctl Store Name               : (null)
    DS Mapper Usage              : Disabled
    Negotiate Client Certificate : Disabled
    Reject Connections           : Disabled
    Disable HTTP2                : Not Set
    Disable QUIC                 : Not Set
    Disable TLS1.2               : Not Set
    Disable TLS1.3               : Not Set
    Disable OCSP Stapling        : Not Set
    Enable Token Binding         : Not Set
    Log Extended Events          : Not Set
    Disable Legacy TLS Versions  : Not Set
    Enable Session Ticket        : Not Set
 Extended Properties:
    PropertyId                   : 0
    Receive Window               : 1048576
 Extended Properties:
    PropertyId                   : 1
    Max Settings Per Frame       : 2796202
    Max Settings Per Minute      : 4294967295
```

* deleting the binding for the application

`netsh http delete sslcert ipport=0.0.0.0:44307`

* re-add the binding with  verify client cert disabled.  

`netsh http add sslcert ipport=0.0.0.0:44307 certhash=61d34f532da121bbab64723c4871e72c92f03735 appid='{214124cd-d05b-4309-9af9-9caa44b2b74a}' certstorename=MY verifyclientcertrevocation=disable`

Executing `netsh http show sslcert ipport=0.0.0.0:44307` again will return something similiar to the output below indicating `Verify Client Certificate Revocation : Disabled`

```powershell
SSL Certificate bindings:
-------------------------

    IP:port                      : 0.0.0.0:44307
    Certificate Hash             : 61d34f532da121bbab64723c4871e72c92f03735
    Application ID               : {214124cd-d05b-4309-9af9-9caa44b2b74a}
    Certificate Store Name       : MY
    Verify Client Certificate Revocation : Disabled
    Verify Revocation Using Cached Client Certificate Only : Disabled
    Usage Check                  : Enabled
    Revocation Freshness Time    : 0
    URL Retrieval Timeout        : 0
    Ctl Identifier               : (null)
    Ctl Store Name               : (null)
    DS Mapper Usage              : Disabled
    Negotiate Client Certificate : Disabled
    Reject Connections           : Disabled
    Disable HTTP2                : Not Set
    Disable QUIC                 : Not Set
    Disable TLS1.2               : Not Set
    Disable TLS1.3               : Not Set
    Disable OCSP Stapling        : Not Set
    Disable Legacy TLS Versions  : Not Set
```
Take note that root certificates may not be available when configuring on a non-DoD machine and you will recieve 403.16 http status codes.  A work around can be performed to export your Dod cert using the following and then importing it back in as a Trusted Root Certificate using the mmc snap-in.
Export Certificate in to a file.
* Open Internet explorer > Tools > Internet Option >Contents >
Certificate (This will display your certificate under Personal Tab.
* Click on the Certificate then click Export. Certificate Export Wizard window
will open.
* Click Next > Select > Yes, export private keys
* Click Next > Select Include all certificates in Certificate path if possible
and Enable strong protection.
* Click Next and enter password and Confirm Password. (Here password
will be your certificate request number)
* Click Next and enter File Name with complete path OR Click Browse > Click Desktop and enter File Name and click Save.
* Click Next and then click Finish
(This will save your certificate as a file with extension .pfx) 

After importing in, the Dod Root certs should also be available within the Trusted Root Certification Authorities


[Reference](https://support.microsoft.com/en-us/help/942061/error-message-when-you-visit-a-web-site-that-is-hosted-on-iis-7-0-http)

##### END