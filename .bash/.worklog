# Worklog functions so I can keep notes and search them later
#
#  Appends the input to the end of the worklog.txt file with a date string in front,
#  so that I can see when I wrote the note.
#
# Use
# $ wl <note>
function wl() {
	echo $(date +"[%Y/%m/%d %T %z] ") $* >> $HOME/worklog.txt
}

# Show last items of worklog, defaults to 10 lines if none specified
# Use
# $ l 20
function l() {
	LINE_COUNT=$1
	[ -z "$1" ] && LINE_COUNT=10
	tail -n $LINE_COUNT $HOME/worklog.txt
}

# quick search through the worklog for a given term (can use grep options)
# Use
#   Search for add in worklog
#     $ q add
#   Search for case insensitive add in worklog
#     $ q -i add
#   Search for lines containing add or JSON
#     $ q -E 'add|JSON'
#   Search for lines containing add or JSON and show the 3 lines before and after each occurance
#     $ q -E -A3 -B3 'add|JSON'
function q() {
    ARGS=$*
	if [ -n "$ARGS" ]; then
	    grep $ARGS $HOME/worklog.txt
	fi
}

