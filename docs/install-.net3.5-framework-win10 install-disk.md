Installed older .NET frameworks from an Windows 10 installation disk using a variation of the information found [here](https://winaero.com/blog/offline-install-of-net-framework-3-5-in-windows-10-using-dism/)

My variation is I copied the entire sxs folder from the W10 installation disk to my local drive on the non-networked machine and executed the command against the copied folder. Having the sxs copy on that machine will allow me to repeat this process later. 

### from W10 installation disk or iso mount
Dism /online /enable-feature /featurename:NetFX3 /All /Source:D:\sources\sxs /LimitAccess

### from sxs directory copied to my local drive in the win10-sources directory 
Dism /online /enable-feature /featurename:NetFX3 /All /Source:C:\win10-sources\sxs /LimitAccess

[Reference](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/dism---deployment-image-servicing-and-management-technical-reference-for-windows)
