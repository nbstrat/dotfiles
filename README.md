# nbstrat dotfiles

Quick and dirty dotfiles for configuring a Windows based workstation for the development efforts that I typically am involved in.

Please note that some of these configurations are 'work-arounds' based on DoD security implementations and are usually not the best approach if you are not required to do so.

### TODO

* Add my Oracle SQL Developer configuration and report files
* Add my Client-Side SSL Visual Studio configuration/setup notes
* Add my git hooks




## Visual Studio Client-Side (CAC) Authentication during Development

### Enable SSL for the project if not already enabled.
  * Highlight the API project from Solution Explorer and press F4.
  * Set the following properties:
    * `Always Start When Debugging:= true`
    * `Anonymous Authentication:= Enabled`
    * `Managed Pipeline Mode:= Integrated`
    * `SSL Enabled:= true`
    * `SSL URL:= https://localhost:44300/`
    * `URL:= https://localhost:60565`

### Modify the IIS-Express applicationhost.config file.

By default, the config file will be located at:  
  * VS2013 := `C:\Users\<you>\Documents\IISExpress\config`  
  * VS2015 := `$(solutionDir)\.vs\config\applicationhost.config`

>**Create a backup of the original file before making modifications.**  
>i.e. `config\applicationhost.config.bkup`

Locate the access tag and modify the sslFlags attribute to "SslNegotiateCert"
>i.e. &lt;access sslFlags="SslNegotiateCert" /&gt;

>  &lt;system.webServer&gt;  
>  &nbsp;&nbsp;&lt;security&gt;  
>  &nbsp;&nbsp;&nbsp;&nbsp;&lt;access sslFlags="SslNegotiateCert"/&gt;  
>  &nbsp;&nbsp;&lt;/security&gt;  
>  &lt;/system.webServer&gt;
  
NOTE: Using the `SslRequireCert` attribute did not provide the CAC prompt
on the USAF environment. 


If propertly configured, you will be prompted for CAC when making request to port 44300.
 
* With CAC prompt  
* `https://localhost:44300/`  
* Without CAC prompt   
* `http://localhost:60565/`  


### Oracle SQL Developer

#### settings.xml
%USERPROFILE%\AppData\Roaming\SQL Developer\systemx.x.xx.xx\o.ide.xx.x.x.x.xx.xx.xx\settings.xml

#### connections.xml
%USERPROFILE%\AppData\Roaming\SQL Developer\systemx.x.xx.xx\o.jdeveloper.db.connection.xx.x.x.x.xx.xx.xx\connections.xml

#### product-preferences.xml
%USERPROFILE%\AppData\Roaming\SQL Developer\systemx.x.xx.xx\o.sqldeveloper.xx.x.x.xx.xx\product-preferences.xml
