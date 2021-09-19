echo "hihi! this is 'aaa'"
echo "bash built in commands uses help, not man"

# use -e to enble more escapes
# \a creates the alert sound
echo -e "\taaaa\b \n another line"


echo * | grep some --color
# some as ls
# because before echo, shell has expanded * to the file names
# echo is a good way to observe them (for special chars for other commands)