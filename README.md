# nbstrat dotfiles

[https://nbstrat.github.io/dotfiles/](https://nbstrat.github.io/dotfiles/)


Rework version to automate setting up a new machine. This dotfile collection is largely based on the dotfile collection of mathiasbynens dotfile collection. 

https://github.com/mathiasbynens/dotfiles 


### Installation
Warning: If you want to give these dotfiles a try, you should first fork this repository, review the code, and remove things you don’t want or need. Don’t blindly use my settings unless you know what that entails. Use at your own risk!

Using Git and the bootstrap script
You can clone the repository wherever you want. (I like to keep it in ~/_projects/dotfiles) The bootstrapper script will pull in the latest version and copy the files to your home folder.

```bash
git clone https://github.com/nbstrat/dotfiles.git && cd dotfiles && source bootstrap.sh
```
To update, cd into your local dotfiles repository and then:

```bash
source bootstrap.sh
```

Alternatively, to update while avoiding the confirmation prompt:

```bash
set -- -f; source bootstrap.sh
```



## Thanks To...

* [Jim Nanney](https://github.com/jimnanney) for first introducing me to dotfiles.
* [Mathias Bynens](https://github.com/mathiasbynens) and his [dotfiles repository](https://github.com/mathiasbynens/dotfiles)
* [Zach Holman](https://github.com/holman) and his [dotfiles repository](https://github.com/holman/dotfiles)
* [Jay Harris](https://github.com/jayharris) and his Powershell variation [dotfiles repository](https://github.com/jayharris/dotfiles-windows)


## Other



#### My manually installed software 
* Java - Needed for BFG file cleaner.
* VS Code
* [Beyond Compare](https://www.scootersoftware.com/) One the best and easiest to use comparison viewers.  
* [gVim](https://www.vim.org/download.php) - Grahical Vim editor.
* SoapUI - https://smartbear.com/ (REST and SOAP API tool)
* [Virtual CloneDrive](https://www.elby.ch/en/products/vcd.html) for mounting iso images within a VM instance.



#### TODO

* Add my Oracle SQL Developer configuration and report files
* Add my git hooks
* Implement git hooks template and deploy the hook scripts with bootstrap.sh


## Reference:

### Visual Studio Client-Side (CAC) Authentication during Development

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


If properly configured, you will be prompted for CAC when making request to port 44300.

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


### BFG Repo Cleaner
[Resolving LFS references](github-error-GH0008.md) with [BFG Repo Cleaner](https://rtyley.github.io/bfg-repo-cleaner/) 
