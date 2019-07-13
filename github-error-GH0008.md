#### GitHub Error GH008

I had a situation where a number of files within a LFS enabled git repository could not be referenced returning errors such as the ones below. 

`remote: error: GH008: Your push referenced at least 32 unknown Git LFS objects:`

`(missing) path/filename (278c3e715ad537efa9945e4a7b3277145be7d4987d3264956147d6d765f34afc)`

I tried the various fixes (below) that I found with StackOverload and Git user groups to no avail.

`git lfs push origin --all`

`git add --renormalize path/to/file`

Since I couldn't push the updated files to GitHub due to the broken references to the Git LFS objects I was just stuck. I even attempted to create a new repository at GitHub and push to that only to have the same problem of unknown LFS objects.

In this particular case, since I didn't really need the history of these files since they were spreadsheets and word documents (aka binary files), [BFG](https://rtyley.github.io/bfg-repo-cleaner/) was my fix so I could push the latest revision to GitHub.  

##### Solution

Using the output from git indicating the (missing) file, I executed the following [BFG](https://rtyley.github.io/bfg-repo-cleaner/) command for each of these files. This remove history for all previous commits and as a side effect, the LFS object references solving my issue.

 

`bfg --delete-files <filename>  path/to/repo/.git`

