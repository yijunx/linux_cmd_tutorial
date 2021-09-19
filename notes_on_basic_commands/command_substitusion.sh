echo $(ls /etc/X11)  # run ls first, then it become the argument for echo, not pipe
ls -l $(which python)
echo ${USER}
echo \${USER}  # supress..