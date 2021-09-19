# path expansion
# the below command list out all the .h files
ls /usr/include/*.h
# the wildcard char gets expanded
rm somedir/*.ccc # removes all the files with ccc suffix in the curr dir
rm somedir/*.*  # remove all files with xx.xxx (must have a dot..)
rm somedir/*  # just remove all...


# ~ expansion
echo ~  # shows the home dir..
echo ~/ff  # shows the home dir with /ff


# arithmatic expansion
echo $((7 + 3))  # 10
echo $((7 / 3))  # 2
echo $((7 / 3.3))  # bash: 7 / 3.3: syntax error: invalid arithmetic operator (error token is ".3")
# expansion in expansion
echo $(( 5 ** $((1 + 1)) ))  # 25
# use only one expansion
echo $(( 5 % (1 + 1) ))  # 1
# supports + - * / % **


# brace expansion
# preamble{expansion}postscript
echo xxx{a,b,c}xxx  # xxxaxxx xxxbxxx xxxcxxx
echo I love {a,b,c} # I love a b c
echo "I love"{a,b,c}  # I lovea I loveb I lovec
echo Number_{1..5}  # Number_1 Number_2 Number_3 Number_4 Number_5
echo letter_{a..e}  # letter_a letter_b letter_c letter_d letter_e
echo a{A{1,2},B{3,4}}b  # aA1b aA2b aB3b aB4b

# make use of it!
echo {2008..2017}-{01..03} # 2008-01 2008-02 2008-03 2009-01 2009-02 2009-03 2010-01 2010-02 2010-03 2011-01 2011-02 2011-03 2012-01 2012-02 2012-03 2013-01 2013-02 2013-03 2014-01 2014-02 2014-03 2015-01 2015-02 2015-03 2016-01 2016-02 2016-03 2017-01 2017-02 2017-03
mkdir {2008..2017}-{01..03}  # makes a lot of folders

# in double quotes
# single token
# word spliting, tilda expansion, brace expansion are suppressed
# parameter expansion, command substition, arithmatic expansion still ok
echo "*"  # compared to echo *
echo "$((5-2))"  # but this works!
echo "\$((5-2))"  # escaped..
export SOMETHING=rrr
echo Hello, world ~/ffff  ~/notes/*.sh  {3..7} $((2+2)) $SOMETHING
#  Hello, world /opt/yijunx/ffff /opt/yijunx/notes/*.sh 3 4 5 6 7 4 rrr
echo "Hello, world ~/ffff  ~/notes/*.sh  {3..7} $((2+2)) $SOMETHING"
#  Hello, world ~/ffff  ~/notes/*.sh  {3..7} 4 rrr

# how about single quoted string
# single quotes is a single token
# everything suppressed
echo "Hello, world ~/ffff  ~/notes/*.sh  {3..7} $((2+2)) $SOMETHING"
#  Hello, world ~/ffff  ~/notes/*.sh  {3..7} $((2+2)) $SOMETHING




