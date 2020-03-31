# nbstrat dotfiles

[https://nbstrat.github.io/dotfiles/](https://nbstrat.github.io/dotfiles/)


Rework version to automate setting up a new machine. 


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



## Thanks To


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


### Software Installation via appget
[AppGet](https://appget.net/) is a package manager for Windows that I have recently started using that greatly simplifies installing your must-have development software. Just be sure to not to forget to restart your bash shell after installing!

Below is my current list of must-haves for getting stuff done. I typically run these commands with the ```interactive``` and ```verbose``` flags to see the specific errors that may occur when executing from certain locations. 

NOTE: The following commands can be executed in Powershell or in a Bash Shell.

#### Git
appget install git --interactive --verbose

#### Git Extensions
appget install gitextensions --interactive --verbose

#### Beyond Compare
```
appget install beyond-compare --interactive --verbose
```
#### Visual Studio Code
```
appget install visual-studio-code --interactive --verbose
```
#### Visual Studio 2017 Community Edition
```
appget install visual-studio-2017-community --interactive --verbose
```

#### Visual Studio 2019 Community Edition
```
appget install visual-studio-2019-community --interactive --verbose
```

#### Visual Studio 2019 Enterprise Edition
```
appget install visual-studio-2019-enterprise --interactive --verbose
```

-- untested
gVim:  appget install gvim --interactive --verbose
Virtual CloneDrive: appget install virtual-clonedrive

-- not evaluated (yet)
Linqpad: https://www.linqpad.net/

#### TODO

* Add my Oracle SQL Developer configuration and report files
* Add my git hooks
* Implement git hooks template and deploy the hook scripts with bootstrap.sh


## Reference:


### Visual Studio CAC 
* [Visual Studio Client-side (CAC) Authentication during Development](docs/vs-ssl-config.md)
* [HowTo create client certificates for CAC testing](docs/generating-client-certificate-from-powershell.md)


### Oracle SQL Developer
[Oracle Sql Developer User Configuration Settings](docs/oracle-sql-developer.md)


### BFG Repo Cleaner
[Resolving LFS references](docs/github-error-GH0008.md) with [BFG Repo Cleaner](https://rtyley.github.io/bfg-repo-cleaner/) 

### Sparse Checkout
[Sparse Checkout References](docs/sparse-checkout.md)

### DotNet Core
[Dot Net Core References](docs/dot-net-core.md)
