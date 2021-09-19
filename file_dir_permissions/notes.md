# permission

drwxr-xr-x has 4 groups

d | rwx | r-x | r-x

* group 1
    * d in the front means it is a directory
    * \- in the front means it is a file
    * l in the front means it is a link

* group 2 (permission for the user)
    * r: read (read the content of the dir if its a dir)
    * w: write (add / remove content to / from the dir)
    * x: execute a file if its a program (can go inside the dir, cd into it if its a dir)

* group 3 (permission for the group)
    * example: can create a group, who can read, go into, but cannot write if its not owner

* group 4 (permission for other)

# update permissions


chmod o-x file_dir_permissions/some_text.txt 

o: other
g: group
u: user
ommited: for all

+: add
-: minus

rwx: rights..


chmod g+rw file  # add both read and write


# numerical representation
r = 4
w = 2
x = 1

note that 4 + 2 + 1 = 7
chmod 770 testfile.txt

first number is for user, second for group, third for other

chmod -R 600 dir/*
\-R recursive


# Change ownership



