# display pwd
pwd

# create mkdir -v (v -> verbose)
mkdir -v dirA

# create 2 folders
mkdir dirA dirB

# use -p to make parent folders.
mkdir -v -p dirX/dirY

# ls!!! 
ls some_dir_name/another_dir_name
ls /absolute_path

# ls -l (long listing format)
ls -l /usr/bin/python  # notice there is -> python2
file /usr/bin/python2.7  #  it is a executable

# however this is a python3.9 base image from the devcontainer
which python  #/usr/local/bin/python
ls -l /usr/local/bin/python # lrwxrwxrwx 1 root root 7 Mar 12  2021 /usr/local/bin/python -> python3 (symbolic link)
file /usr/local/bin/python  # /usr/local/bin/python: symbolic link to python3
file /usr/local/bin/python3.9 # /usr/local/bin/python3.9: ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 3.2.0, BuildID[sha1]=356d7e1e51c8254598d6f8f15336e766c7b78906, with debug_info, not stripped

ls -a # to show hidden files -a == --all
# ls by default ignores hidden files start with dot

# ls with some other arguments
ls -a --color  # colorize the output

# about -l
# file_permission | owner | group | file_size | modification_at(UTC) | file_name
# file_size is not that readable
# use ls -l -h (or just ls -lh) [shows 1287 -> 1.3K]

# use rm to delete files
rm file_name  # simply deletes without pop up confirmation
rm file_name_1 file_name_2
# -i -> prompt for each file
# -r --recursive -> used to delete folder and their contents
# -f --force -> ignore nonexistent files and arguments, never prompt


# use mv to move files (well it works with folders..)
# can be used to rename file
mv n m  # rename if m is not dir!
mv a b c lol  # now lol has to be a dir!


# ln -make inks between files
ln -s orginal/lala short_cut_name # make symbolic links (like shortcuts in windows)
# can tell from ls --color or ls -l, there is a ->
# if only provide the original/lala, it will use the file (lala)

# cp
cp from_file to_file
# if to_file is folder, it will copy to that folder
# cp folder to folder, if folder2 exists, it folder will be under folder2
cp -r folder folder2 


# grep (man grep)
ls | grep stuff --color
ls | grep stuff -c


# head/tail (man head/tail)
-n 5 # 5 rows










# clean up






