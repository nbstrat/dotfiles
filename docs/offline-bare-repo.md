## HowTo Create A Bare Repo for working in isolated environments
Examples use this (dotfiles) repo name for the examples.

Isolated environment - no internet access;


Box A: Originating source machine that has the non-bare git repo. This machine has access to the real world but cannot access Box B or Box C.
Box B: Destination bare repo machine where the bare repo will reside. This machine is isolated from Box A and the world.
Box C: The isolated development machine. Has connectivity to Box B, but not to the world.
(Box B and Box C are on an isolated network with no outside connectivity).

Create a local bare repo from an existing non-bare repo on Box A.
```
git clone --bare /c/_projects/dotfiles /c/_projects/bare/dotfiles.git
```

* (optional) Test that the bare repo has everything needed in the isolated environment by cloning and comparing the results to the original source repo.
Note: Visual Studio packages directory is typically excluded in a source repo. 
When working in an isolated environment, these will need to be included.
```
git clone /c/_projects/bare/dotfiles.git /c/_projects/bare-extract
```

* Connect the transfer device to Box A and copy the bare repo to the transfer device

* Connect the transfer device to Box B (the destination bare repo machine) and copy the bare repo to the destination device


* Clone the bare repo to the isolated work machine (Box C)
```
git clone //<some server>/path/to/share/dotfiles.git /c/_projects/dotfiles
```





