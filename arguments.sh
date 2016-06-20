#!/bin/bash
#------------------------------------------------------------------------------
#
# run ./arguments.sh Bash Scripting Language
#
#------------------------------------------------------------------------------

first=1
second=2

echo $1 $2 $3 ' -> echo $1 $2 $3'

# We can also store arguments from bash command line in special array
args=("$@")
echo ${args[0]} ${args[1]} ${args[2]} ' -> args=("@@"); echo ${args[1]} ${args[1] $args[2]}'


#use $@ to print out all arguments at one
echo $@  '-> echo $@'

# use $# variable to print out
# number of arguments passed to the bash script
echo Number of arguments passed: $# '-> echo Number of arguments passed: $#'

if [ $first -gt $second ]; then
  # create archive
  file_name=~/Backup/Desktop-Bash-$(date +%Y%m%d).tar.gz
  tar -czf $file_name ~/Desktop/Bash

  echo -e "Hi, please type the word: \c "
  read word
  echo "The word you entered is: $word"
  echo -e "Please can you enter two words"
  read word1 word2
  echo "Here is your input: \"$word1\" \"$word2\""

  #echo "read -a colours -->  makes read command to read into an array"
  echo "#Write list of colours:"
  read -a colours
  echo "My favorite colours are also ${colours[0]}, ${colours[1]}, ${colours[2]}"
else
  echo "Remove examples"
fi


ARRAY=( 'Debian Linux' 'Redhat Linux' 'Ubuntu Linux')
elNum=${#ARRAY[@]}
echo "Array: Number of elements $elNum"
# Array: Number of elements 3
for ((i=0;i<$elNum;i++)); do
  echo ${ARRAY[${i}]}
done
# Debian Linux
# Redhat Linux
# Ubuntu Linux


function selectLanguage() {
  echo "1. Bash"
  echo "2. Python"
  echo "3. Ruby"
  echo "4. Javascript"
  echo "5. Java"
  echo "9. Exit"
  echo -n "Please choose a number [1,2,3,4 or 5]"
}
function getChoice() {
  choice=100
}
if [ $first -gt $second ]; then
  selectLanguage
  getChoice
  while [ $choice -eq 100 ]; do
    read choice
    if [ $choice -eq 1 ]; then
      echo "You have chosen Bash"
    elif [ $choice -eq 2 ]; then
      echo "You have chosen Python"
    elif [ $choice -eq 3 ]; then
      echo "You have chosen Ruby"
    elif [ $choice -eq 4 ]; then
      echo "You have chosen Javascript"
    elif [ $choice -eq 5 ]; then
      echo "You have chosen Java"
    elif [ $choice -gt 10 ]; then
      echo "Exit"
    else
      selectLanguage
      getChoice
    fi
  done
fi


read -r -d '' multi_string <<- EOM
    This is line 1.
    This is line 2.
    Line 3.
EOM
echo $multi_string
# This is line 1. \n This is line 2. Line 3

USAGE=$(cat <<-END
  This is line one.\nThis is line two.\n
  This is line three.\n
END
)
echo -e $USAGE
# This is line one.
# This is line two.
#  This is line three.

echo -e "this" "is" "line" "one\n""this" "is" "line" "two\n"
# this is line one
# this is line two


