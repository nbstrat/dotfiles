

# Installing D365 9.0 on development workstation – step by step instructions

### Prerequisites
  * Windows 2016 Operating System - Standard Desktop Experience  
    `Windows_Server_2016_Datacenter_EVAL_en-us_14393_refresh.ISO`  
  * MS SQL Server 2016 (developer edition)  
    `enu_sql_server_2016_developer_edition_with_service_pack_3_x64_dvd_ceaed495.iso`  
  * Dynamics 365 Installation Files  
    `CRM9.0-Server-ENU-amd64.exe`  
  * Dynamics 365 software registration key  
 


# Enable Hyper-V 

Enable Hyper-V on the development machine if needed.
Start Hyper-V manager


# Install Host Operating System
    
From Hyper-V Manager, select New Virtual Machine

![Alt text](images/hyper-v-1.png)
![Alt text](images/hyper-v-2.png)
![Alt text](images/hyper-v-3.png)
![Alt text](images/hyper-v-4.png)
![Alt text](images/hyper-v-5.png)
![Alt text](images/hyper-v-6.png)
![Alt text](images/hyper-v-7.png)

Highlight the Virtual Machine instance D365-v2.
Hold down the Space bar and select Connect and then Start.
![Alt text](images/hyper-v-start.png)


From the Windows Setup, select Windows Server Standard Evaluation (Desktop Experience)
![Alt text](images/win-1.png)


# Install Active Directory and promote to Domain Controller
Login to the W2016 server with the Administrator account.
Choose "Add Roles and Features

![Alt text](images/ad-1.png)
![Alt text](images/ad-2.png)
![Alt text](images/ad-3.png)
![Alt text](images/ad-4.png)
![Alt text](images/ad-5.png)
![Alt text](images/ad-6.png)
![Alt text](images/ad-7.png)
![Alt text](images/ad-8.png)
![Alt text](images/ad-9.png)
![Alt text](images/ad-10.png)
![Alt text](images/ad-11.png)
![Alt text](images/ad-12.png)
![Alt text](images/ad-13.png)
![Alt text](images/ad-14.png)
![Alt text](images/ad-15.png)

Select Install and allow server to reboot. Confirm that the AD tools are installed.
![Alt text](images/ad-16.png)



# Create users for service accounts
Select Active Directory Useres and Computers
![Alt text](images/adu-1.png)


Expand the dev.loc forest.
![Alt text](images/adu-2.png)


Highlight dev.loc and select New > Organizational Unit  
Create a new Organizational Unit named D365  
![Alt text](images/adu-3.PNG)


Create users for the Service Accounts as part of the D365 Organizational Unit and provide privileges based 
on this [guide](https://learn.microsoft.com/en-us/previous-versions/dynamicscrm-2016/deployment-administrators-guide/hh699825(v=crm.8) "Security considerations for Microsoft Dynamics 365").

I created each of these with the same default password for simplicity. 
* Application Service (DEV\D365AppService)
    * will require Performance Counter permissions.
* Deployment Web Service (DEV\D365DeployWebService)
* Sandbox Processing Service (DEV\D365SandboxService)
* VSS Writer Service (DEV\D365VSSWriterService)
* Asynchronous Processing Service (DEV\D365AsyncService)
    * will require Performance Counter permissions.
* Monitoring Service (DEV\D365MonitorService)
* Reporting Services Service (DEV\D365RSService)

NOTE: Initial naming of DeploymentWebService and Montioringervice was too long.
Active Directory support up to 20 characters for user login name.

![Alt text](images/adu-4.PNG)
![Alt text](images/adu-5.PNG)
![Alt text](images/adu-6.PNG)


I created these  as "Users" of the D365 Organization Unit with default password that never expires.


![Alt text](images/adu-7.PNG)

## Performance Log User
From Active Directory Users and Computers, highlight D365AppServer and select properties.  
![Alt text](images/plu-1.PNG)

Select the Member Of tab.  
Select Add.  
Enter Performance Log User and select Check Names.  
![Alt text](images/plu-2.PNG)  

Select Ok and then select Apply  
![Alt text](images/plu-3.PNG)  

Repeat for the D365AsyncService



# Install SQL Server
Select New SQL Server stand-alone installation.
![Alt text](images/db-1.PNG)
![Alt text](images/db-2.PNG)
![Alt text](images/db-3.PNG)
![Alt text](images/db-4.PNG)

D365 will require the “Full-Text and Semantic Extraction for Search” option.
![Alt text](images/db-5.PNG)

![Alt text](images/db-6.PNG)
![Alt text](images/db-7.PNG)
![Alt text](images/db-8.PNG)
![Alt text](images/db-9.PNG)
![Alt text](images/db-10.PNG)
![Alt text](images/db-11.PNG)


# Install SQL Server Reporting Services
Open Report Services Configuration Manager and connect to the database.
![Alt text](images/rs-1.PNG)

![Alt text](images/rs-2.PNG)

![Alt text](images/rs-3.PNG)

![Alt text](images/rs-4.PNG)

![Alt text](images/rs-5.PNG)

Click Exit to close Report Service Configuration Manager



# Configure Internet Explorer Enhanced Security
Using Server Manager, turn Off IE Enhanced Security   
![Alt text](images/es-1.PNG)

![Alt text](images/es-2.PNG)


# Install D365 v9.0
Download CRM9.0-Server-ENU-amd-64.exe
Start the executable and extract file to C:\D365

![Alt text](images/d365-1.PNG)

Allow the installer to check for updates and apply if needed.

![Alt text](images/d365-2.PNG)
![Alt text](images/d365-3.PNG)

Enter the Dynamics 365 Product Key
(the license key being used for development is available to me via my MSDN subscription)

![Alt text](images/d365-4.PNG)


* Create folder SQLNativeClient, ![Download](https://www.microsoft.com/en-us/download/confirmation.aspx?id=50402) download file and put it in created folder and rename downloaded file sqlncli.msi to name sqlncli_x64.msi;
* Create folder SQLSystemCLRTypes, download file and put it to created folder and rename downloaded file SQLSysClrTypes.msi to name SQLSysClrTypes_x64.msi;
* Create folder SQLSharedManagementObjects, download file and put it to created folder and rename downloaded file SharedManagementObjects.msi to name SharedManagementObjects_x64.msi.


![Alt text](images/d365-5.PNG)

![Alt text](images/d365-6.PNG)

![Alt text](images/d365-7.PNG)

![Alt text](images/d365-8.PNG)

![Alt text](images/d365-9.PNG)

![Alt text](images/d365-10.PNG)

Click Browse and select D365 as the Organizational Unit

![Alt text](images/d365-11.PNG)

![Alt text](images/d365-12.PNG)

![Alt text](images/d365-13.PNG)

Assign the Service Accounts created earlier for each of the Services.  
![Alt text](images/d365-14.PNG)

Create new Website with port 5555.

![Alt text](images/d365-15.PNG)

Leave the optional Email Router setting blank.

Specify the Organizational Settings

![Alt text](images/d365-16.PNG)

Specify Reporting Services Server

![Reporting Services](images/d365-17.PNG)


Click Next to run System Checks and correct any errors that are displayed. 
The Data encryption warning can be ignored. 
![Reporting Services](images/systemChecks.PNG)  

Click Install  
![Reporting Services](images/install-2.PNG)  

After successful installation, you will be prompted to install Reporting Extensions Setup.  
Reporting Extensions should show green check marks for:  
* Microsoft SQL Server  
* Environment Checks  
* User Input Checks  

![Reporting Services](images/finish.PNG)  

Open browser and navigate to the D365 application to verify that installation was successful.  
http://win-9i6fdfme4lg:5555/CRM/main.aspx (using chrome)

Note: This install has XRM menu item. Previous install had Sales menu item. Not sure why the difference.

This instance is NOT accessible from the host machine, but must be connected to from within the virtual machine. I have the default adapter of the Hyper-V instances (Virtual Switch Manager) specifically set to  Internal  to prevent exposing any data from the D365 installation to the outside world.


Reference: https://butenko.pro/2019/01/09/d365ce_90_step_by_step_installation/  