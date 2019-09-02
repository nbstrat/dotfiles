# Add `~/bin` to the `$PATH`
# export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
echo 'Loading shell dotfils as defined in .bash_profile.'
for file in ~/.bash/.{paths,config,prompt,exports,aliases,worklog,browser}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
    #echo $file;
done;
unset file;

