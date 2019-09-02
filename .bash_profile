# source $HOME/.bash/paths.sh
# source $HOME/.bash/config.sh
# source $HOME/.bash/prompt.sh
# source $HOME/.bash/aliases.sh
# source $HOME/.bash/worklog.sh
# source $HOME/.bash/npm-fixes.sh
# source $HOME/.bash/browser.sh

#todo - rename files as .dot files without sh extension

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
echo 'Loading shell dotfils as defined in .bash_profile.'
#for file in ~/.bash/.{paths,config,prompt,aliases,worklog,npm-fixes,browser}; do
for file in ~/.bash/.{paths,config,prompt,aliases,worklog,npm-fixes,browser}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
    echo $file;
done;
unset file;

