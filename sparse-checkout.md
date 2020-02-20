## sparse-checkout

If you have to look something up more than twice, you need a cheat sheet for quick reference.

sparse-checkout file is located in the `.git/info` directory

Use this example to add additional directories to the sparce-checkout file:
```
some/path/in/the/repo/
```

Use this example to add specific files to the sparce-checkout file:
```
some/path/in/the/repo/myfile.txt
```

### Initial Setup
```
mkdir myrepo
cd myrepo
git init
git config core.sparseCheckout true
git remote add -f origin git://...
git remote add origin https://github.com/user/repo.git
echo "path/within_repo/to/desired_subdir/*" > .git/info/sparse-checkout
git checkout [branchname] # ex: master
```

* Create and navigate to the directory 
```
mkdir myrepo
cd myrepo
```

* Initialize a new repository
```
git init
```

* Enable sparseCheckout  
```
git config core.sparseCheckout true
```

* Add the remote origin
```
git remote add -f origin https://github.com/user/repo.git
```

* Add the path of the repo that you want to checkout 
```
echo "path/within_repo/to/desired_subdir/*" > .git/info/sparse-checkout
```

* Checkout the repo
```
git checkout master
git pull origin master
```


* LFS Issue when moving LFS from github to gitlab
http://gopalkri.com/2016/10/07/Migrating-Repositories-With-Git-Lfs/
TL;DR - Moved my LFS enabled repo from github to gitlab and my LFS files were not auto-magically transferred. 
All files have to be fetched and then pushed to the new repo service.
And don't do this from a repo that has sparse-checkout enabled.
```
git lfs fetch --all 
git lfs push gitlab --all 
```
