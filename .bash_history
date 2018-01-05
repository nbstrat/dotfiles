git add app/controllers/forcegainmanagement/*
git status
git commit -m '
git commit -m 'changed StartDate and ArrivalDate columns to use DateColumn instead of TextColumn'
git status
git checkout master
git merge courseClassDateFix
git status
git branch -d courseClassDateFix
git push origin master
git pull origin master
smdb
git status
git diff Build/TTMS/Oracle/Install/Data/ur_actions.asc
git add .
git status
git commit -m 'added STUDENT.LEARNINGEVENTS and STUDENT.QUOTAEVENTS actions, added unit tests.' 
git pull origin master
git merge --abort
git pull origin LM
git push origin LM
git status
git diff Build/utPLSQL/tests_sm/UT_NAV_ACTIONS.pls
git add .
git status
git commit -m 'corrected OPERATIONLOCATIONS unit test to use the singular form of the action'
git status
git push origin LM
gitk &
git status
smapp
git status
smdb
git status
git pull origin LM
gitk &
smapp
git status
git pull origin master
smapi
git status
git pull origin master
smadb
smdb
smapp
git status
git checkout -b 'courseClassDateFix'
git add app/controllers/course/classes/index.js
git status
gitk & 
git commit -m 'removed null/undefined checks from startdate, graddate, tpsstartdate and tpsgraddate columns of course.class controller.'
gridcheats &
smdb
git push origin LM
smapp
smdb
git pull origin LM
smapp
git status
git status
git add app/controllers/course/classes/index.js
git diff app/controllers/course/classes/index.js
git diff app/controllers/forcegainmanagement/arrivals.js
git diff app/controllers/course/classes/index.js
git add app/controllers/course/classes/index.js
git commit -m 'removed unused moment declaration to elimnate JSHint error'
git status
git add app/controllers/forcegainmanagement/*
git status
git commit -m '
git commit -m 'changed StartDate and ArrivalDate columns to use DateColumn instead of TextColumn'
git status
git checkout master
git merge courseClassDateFix
git status
git branch -d courseClassDateFix
git push origin master
git pull origin master
smdb
git status
git diff Build/TTMS/Oracle/Install/Data/ur_actions.asc
git add .
git status
git commit -m 'added STUDENT.LEARNINGEVENTS and STUDENT.QUOTAEVENTS actions, added unit tests.' 
git pull origin master
git merge --abort
git pull origin LM
git push origin LM
git status
git diff Build/utPLSQL/tests_sm/UT_NAV_ACTIONS.pls
git add .
git status
git commit -m 'corrected OPERATIONLOCATIONS unit test to use the singular form of the action'
git status
git push origin LM
gitk &
git status
smapp
git status
git add _dev_docs/NavRouteActions.xlsx
git commit -m 'updated dev doc with student.learningevents and student.quotaevents actions'
git status
git push origin master
bmt
git status
git pull origin master
git branch --list
git checkout -b Release-14.12.00
git status
git rm application_server/include/bmtfunctions_sched.cfm
git rm application_server/script/Update.js
git status
git add .
git status
git commit -m 'syncronized file structure and versions with N drive 14.12.00 pull'
git push origin Release-14.12.00
git branch --list -a
smapp
git grep 'ember install ember-select-2' $(git rev-list --all)
git log --all --grep='ember install ember-select-2'
gitk &
git grep --name-only 'table-tree-cell'
git status
git diff app/components/groupable-table.js
git status
git diff app/models/column-definition.js
git add app/components/groupable-table.js
git commit -m 'initial correction of groupable date columns'
git grep --name-only 'table-cell-date';
git status
git diff app/models/date-column.js
git checkout app/models/date-column.js
git diff app/models/column-definition.js
git checkout app/models/column-definition.js
git status
git diff app/components/
git status
git diff app/components/groupable-table.js
git diff app/components/groupable-table.js
git diff app/components/groupable-table.js
git add app/components/groupable-table.js
git commit -m 'removed commented code and window.console.log statements'
git branch --list
git checkout -b 'group-datagrid-fixes'
git status
git diff app/templates/components/data-grid.hbs
git checkout app/templates/components/data-grid.hbs
git status
wl IE does not support startWith expressions and will require a polyfill.
wl startsWith polyfill http://stackoverflow.com/questions/30867172/code-not-running-in-ie-11-works-fine-in-chrome
wl IE datagrid horizontal scrollbar issue after adding additional columns
git status
git diff app/templates/components/data-grid.hbs
git add app/templates/components/data-grid.hbs
git commit -m 'corrected code alignment in the template that was really messing with my OCD issues.'
git status app/components/groupable-table.js
git diff app/components/groupable-table.js
git status
git status
git add _dev_test_docs/grouping-datagrid-test-outline.txt
git commit -m 'dev outline of test conditions and issues with datagrid grouping'
git status
git diff app/components/groupable-table.js
git add app/components/groupable-table.js
git status
git commit
git status
git status
git checkout master
git push origin master
git pull origin master
git diff master origin/master
git diff --name-only master origin/master
git diff master origin/master
git diff origin/master master
git checkout -b IDT origin/master
git checkout master
git branch -d IDT
git push origin master
smapi
git pull origin master
git fetch 
smapp 
git fetch
git status
git diff app/templates/forcegainmanagement/needsmilitaryinfo/index.hbs
wl api UserViewDBRespoitory exception does not return the exception back to the application - determine if/how this should be handled for userviews.
git diff app/templates/forcegainmanagement/needsmilitaryinfo/index.hbs
git add .
git status
git commit -m 'added missing gridId property to the forcegainmanagement/needsmilitaryinfo index template'
git push origin master
git pull origin master
git push origin master
git pull origin master
git checkout -b IDT-JULY
git push origin IDT-JULY
git branch --list -a
git grep --name-only --files-without-match 'gridId=controller.gridId'
git grep --name-only '{{grid-id' && --files-without-match 'gridId=controller.gridId'
git grep --name-only '{{data-grid' && --files-without-match 'gridId=controller.gridId'
smdb
git status
git diff Build/TTMS/Oracle/Install/Data/ur_actions.asc
git add .
git commit -m 'replaced CLASS.LEARNINGEVENTS.VIEWER action with CLASS.LEARNINGEVENTS'
git push origin master
git pull origin master
git merge --abort
git pull origin LM
git push origin LM
glog2
clear
git status
smapp
git status
git add .
git commit -m 'added tenary condition to dateFormat to prevent the use of a null dateFormat for data export mixin.'
git status
git checkout master
git merge IDT-JULY
git branch -d IDT-JULY
git branch --list -a
git push origin --delete IDT-JULY
git push origin master
git pull origin master
git push origin master
git branch --list -a
git status
smdb
git status
git pull origin LM
git add .
git status
git commit -m 'temporary insert script for system wide default userviews' 
git push origin LM
glog2
git status
git pull origin LM
smapp
git status
git --help statsh 
git --help stash 
git stash list
git stash 'class mgr learning event recorder populating date field on multiple applies fix - jerry has assumed work on this'
git stash save 'class mgr learning event recorder populating date field on multiple applies fix - jerry has assumed work on this'
git status
git pull origin master
git help gc
git gc
git pull origin master
git status
git gc --aggressive
git checkout -b startWithPolyFill
git --help branch
git branch -m startWithPolyFill startsWithPolyFill
git status
smapi
git pull origin master
git grep --name-only 'compileModules'
smapp
git grep --name-only 'compileModules'
git grep --name-only 'startsWith'
git status
git checkout app/index.html
git status
smapp
smapi
git status
git add .
git status
git commit -m 'added configuration information for debugging in IE'
git push origin master
git pull origin master
git push origin master
smapi
smapp
git status
smapi
git status
git checkout SMAPI/README.md
git status
smapi
git status
smapp
git status
git diff app/models/column-definition.js
git add app/models/column-definition.js
git commit -m 'replaced startsWith endWith EC6 statements with indexOf for IE11 support.' 
git help tag
git status
git stash 'sorting-fix'
git stash -m 'sorting-fix'
git stash save 'sorting-fix'
git stash list
git checkout master
git pull origin master
glog
gitk & 
git branch --list -a
git tag --list
git help push
git -version
git --version
git pull origin master
git tag --list
gitk &
smapi
git pull origin
smapp
git pull origin master
git fetch
git pull origin master
gitk &
smapi
git remote -v
wl local smapi repositories need to be renamed to lmsapi so scripts can be written that will run on jenkins and locally 
smapp
git stash list
git help stash
git branch sortingFix sorting-fix
git stash branch sortingFix sorting-fix
git stash branch sortingFix stash@{0}
git stash list
git grep --name-only 'SortClientMixin'
git status
gitk app/mixins/sortclientside.js
gitk -- app/mixins/sortclientside.js
git diff app/controllers/user/roleassignments/index.js
git diff app/controllers/user/roleassignments/index.js
git checkout app/controllers/user/roleassignments/index.js
git log --oneline --decorate --color --graph
git status
git diff app/controllers/classstudents/index.js
git checkout app/controllers/classstudents/index.js
git status
git status
git status
git status
git status
git diff app/templates/user/roleassignments/index.hbs
git checkout app/templates/user/roleassignments/index.hbs
git grep --name-only 'sortByColumn'
git status
git diff app/templates/user/roleassignments/index.hbs
git add app/templates/user/roleassignments/index.hbs
git commit -m 'corrected property name sortByColumn in roleassignments index template'
git status
git diff app/controllers/user/roleassignements/index.js
git diff app/controllers/user/roleassignments/index.js
git checkout app/controllers/user/roleassignments/index.js
git status
cd /app/templates/
cd app/templates/
git grep --name-only 'sort'
git grep --name-only 'sort="sortByColumn'
cd ../../../
cd datagrid
dit status
git status
git add app/controllers/forcegainmanagement/needsmilitaryinfo/index.js
git diff app/controllers/classstudents/index.js
git add app/controllers/classstudents/index.js
git status
git diff app/controllers/user/roleassignments/index.js
git add app/controllers/user/roleassignments/index.js
git status
git diff app/controllers/
git add app/controllers/
git status
git commit
wl datagrid scrollbar behaviour with IE
git status
git branch --list
wl merge startsWithPolyFill branch into master THEN merge sortingFix into master after the July IPT
wl document where git is suppose to be installed so everyone can apply the bash alias hacks
wl write versioning git hook similiar to the npm hook for automatic version tagging
git status
git checkout master
git pull origin master
gitk &
git fetch origin
git diff --name-only v0.0.1..v0.0.2 
git diff v0.0.1..v0.0.2 
git diff --name-only v0.0.1..v0.0.2 
git diff --name-only v0.0.1..v0.0.2 
smdb
git fetch origin
git fetch origin
glog
git log --oneline --decorate=full --color --graph
git log --oneline --decorate --tags --color --graph
glog
exit
gridcheats &
smapp
git status
git status
ebmtapi
git status
git pull origin master
ebmtapp
git push origin master
gitk &
git status
git add .
git rm app/adapters/
git rm app/adapters/*
git status
git checkout master
git status
gridcheats &
git reset
git status
gridcheats &
cd /j/TTMS_Documentation
glog
glog2
gitk &
gridcheats &
cd /j/TTMS_Documentation
ls
gitk &
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X/TTMS\ 6.00.00/BASELINE_1_RUNS/IPT/
git status
git commit -m 'commit of TTMS 6.00.00'
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X/TTMS\ 6.00.00/BASELINE_1_RUNS/*
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X/TTMS\ 6.00.00/BASELINE_1_RUNS/KEESLER/
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X/TTMS\ 6.00.00/BASELINE_1_RUNS/KEESLER/Local_Job_Logs/
git commit -m 'commit of TTMS 6.00.00'
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X/TTMS\ 6.00.00/BASELINE_1_RUNS/KEESLER/Output_files/Keesler/Build_1
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X/TTMS\ 6.00.00/BASELINE_1_RUNS/KEESLER/Output_files/Keesler/Build_2
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X/TTMS\ 6.00.00/BASELINE_1_RUNS/KEESLER/Output_files/Keesler/Build_3
git commit -m 'commit of TTMS 6.00.00'
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X/TTMS\ 6.00.00/BASELINE_1_RUNS/KEESLER/Output_files/PW_TGT
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X/TTMS\ 6.00.00/BASELINE_1_RUNS/KEESLER/Output_files/Keesler/PW_TGT
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X/TTMS\ 6.00.00/BASELINE_1_RUNS/KEESLER/Output_files/Keesler/PW_UPG
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X/TTMS\ 6.00.00/BASELINE_1_RUNS/KEESLER/Output_files/Keesler/PW_UPG
git commit -m 'commit of TTMS 6.00.00'
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X/TTMS\ 6.00.00/
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X/TTMS\ 6.00.00/BASELINE_1_RUNS/KEESLER/
git commit -m 'commit of TTMS 6.00.00'
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X/TTMS\ 6.00.00/BASELINE_1_RUNS/
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X/TTMS\ 6.00.00/BASELINE_1_RUNS/LACKLAND/
git commit -m 'commit of TTMS 6.00.00'
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X/TTMS\ 6.00.00/BASELINE_1_RUNS/MAXWELL/
git commit -m 'commit of TTMS 6.00.00'
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X/TTMS\ 6.00.00/BASELINE_1_RUNS/SM_TRNG/
git commit -m 'commit of TTMS 6.00.00'
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X/TTMS\ 6.00.00/BASELINE_1_RUNS/SHEPPARD/
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X/TTMS\ 6.00.00/BASELINE_1_RUNS/SHEPPARD/
git commit -m 'commit of TTMS 6.00.00'
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X/TTMS\ 6.00.00/BASELINE_1_RUNS/
git commit -m 'commit of TTMS 6.00.00'
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X/TTMS\ 6.00.00/
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X/TTMS\ 6.00.00/BASELINE_1_RUNS/
git commit -m 'commit of TTMS 6.00.00'
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X/TTMS\ 6.00.00/DE_CONVERSION/
git commit -m 'commit of TTMS 6.00.00'
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X/TTMS\ 6.00.00/FUNCTIONAL_SPEC_DOCS/
git commit -m 'commit of TTMS 6.00.00'
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X/TTMS\ 6.00.00/IMPLEMENTATION_PLAN/
git commit -m 'commit of TTMS 6.00.00'
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X/TTMS\ 6.00.00/INTERFACE/
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X/TTMS\ 6.00.00/MEETING_MINUTES/
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X/TTMS\ 6.00.00/MEETING\ MINUTES/
git commit -m 'commit of TTMS 6.00.00'
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X/TTMS\ 6.00.00/Plateau_PSO_TTMS_Team/
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X/TTMS\ 6.00.00/Plateau_PSO_TTMS_Team/FROM_PSO/
git commit -m 'commit of TTMS 6.00.00'
git add TTMS\ Releases/_ARCHIVE/RELEASES/TTMS\ 6.X/TTMS\ 6.00.00/Plateau_PSO_TTMS_Team/TO_PSO/
smapi
git pull origin master
git status
git checkout SMAPI/Repositories/CourseDBRepository.cs
smapp
git pull origin master
git status
git add _dev_test_docs/Courses/Courses-DomainPermissions-LoadTimes.docx
git commit -m 'dev test to evaluate load times with and without ApplyDomainRestrictions'
git status
smapi
git pull origin master
git status
git checkout SMAPI/Repositories/CourseDBRepository.cs
smapp
git pull origin master
git status
git add _dev_test_docs/Courses/Courses-DomainPermissions-LoadTimes.docx
git commit -m 'dev test to evaluate load times with and without ApplyDomainRestrictions'
git status
git rm _deployment-script/SetHost.ps1
smapp
git pull origin master
ttms-cods
ttms-docs
ttmsdocs
git status
git status
