export LS_COLORS="di=01;36:ln=01;31:or=00;30;41"

# git command shortcuts
alias ls="ls --color"
alias pcurl="curl --proxy http://keesler.proxy.us.af.mil:8080 --proxy-negotiate -A 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko' "
alias gs2='git status --short'
alias gs='git status -uno'
alias ga='git add'
alias gc='git commit'
alias gpom='git push origin master'
alias gd='git diff'
gl='git log'
alias glog='git log --oneline --decorate --color --graph'
alias glog2='git log --decorate  --color --graph --format="%C(auto)%h%x09%ai%x08%x08%x08%x08%x08%x08%x09%an%x09%d%s"'
alias glog30='git log --decorate --color --graph --author="Shane Walters" --since="30 days ago"  --format="%C(auto)%h%x09%ai%x08%x08%x08%x08%x08%x08%x09%an%x09%d%s"'
alias dlog='git log --decorate --name-only --diff-filter=D --format="%C(auto)%h%x09%ai%x08%x08%x08%x08%x08%x08%x09%an%x09%d%s"'
#alias go='git checkout'
alias vim='gvim'

# ttmsdocs and pvcs auto-commits
alias docscommit='cd $HOME/.bash/ && ./ttms-documents-commit.sh'
alias pvcscommit='cd $HOME/.bash/ && ./ttms-pvcs-commit.sh'


# repo backup 
alias runbackups='cd $HOME/.bash/ && ./backup-remote-repos.sh'

# cd location aliases
alias atrrs='cd /c/_projects/atrrs'
alias bmt='cd /c/_projects/bmt'
alias cognos='cd /c/_projects/cognos'
alias reports='cd /c/_projects/custom_reports'
alias dashboard='cd /c/_projects/dashboard'
alias smapp='cd /c/_projects/datagrid'
alias ebmt='cd /c/_projects/ebmt'
alias ebmtapi='cd /c/_projects/ebmtapi'
alias ebmtapidev='cd /c/3MHIS/ebmtapi'
alias ebmtapp='cd /c/_projects/ebmtapp'
alias ebmtdb='cd /c/_projects/ebmtdb'
alias smapi='cd /c/_projects/smapi'
alias smdb='cd /c/_projects/smdb'
alias mtldb='cd /c/_projects/mtldb'
alias npmroaming='cd /c/Users/1287921639E/AppData/Roaming/npm'alias mtldb='cd /c/_projects/mtldb'
alias npmdev='cd /c/_projects/AppData/Roaming/npm'
alias npmroaming='cd /c/Users/1287921639E/AppData/Roaming/npm'
alias release='cd /c/_projects/release-repo'
alias ttmsdocs='cd /j/TTMS_Documentation'


# open specific files in vim
alias gridcheats='vim $HOME/Documents/CheatSheets_Reference/datagrid-cheats.txt'
alias gitcheats='vim $HOME/Documents/CheatSheets_Reference/Git/git-cheats.txt'


# other stuff
alias vs='"/c/Program Files (x86)/Microsoft Visual Studio 12.0/Common7/IDE/devenv.exe"'
alias cmd='"%windir%\system32\cmd.exe"'
alias worklog='vim $HOME/worklog.txt'
alias dash='clear &&  ls -l && echo && git branch && echo && git status --short --branch'
#alias dn='git status --short --branch | grep '^.[DM\?]' | head -1 | awk '$1 ~ /[MD]/ {print $2} $1 ~ /\?/ {print "/dev/null " $2}' | xargs git diff -- && w'
#alias an='git status --short --branch | grep '^.[DM\?]' | head -1 | awk '$1 ~ /[M?]/ {print "add " $2} $1 ~ /D/ {print "rm " $2}' | xargs git && w'
