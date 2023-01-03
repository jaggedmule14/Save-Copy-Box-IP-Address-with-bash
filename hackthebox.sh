#!/bin/bash

#Define where your file is going to be.
FILE=~/hackthebox_ip_input.txt

if [ "$1" == "r" ]; then
  if [ -f $FILE ]; then
      rm -r $FILE && echo $'\n[+]Removed'
  else
    echo $'\n[+]Can't remove because file doesn't exist'

  fi
  
elif [ "$1" == "c" ]; then
  if [ -f $FILE ]; then
      cat $FILE | xclip -sel clip
  else
    echo $'\n[!]Please set an IP first'

  fi

elif [ "$1" == "s" ]; then
  echo $FILE

elif [ "$1" == "help" ]; then
  echo $'\n[+]Simple IP Copy !!Must have xclip\n\nSpecify the next parameters (example "./hackthebox.sh c"):\nFor setting IP just add your input "./hackthebox.sh input"\nTo copy use "c"\nTo remove storage file use "r"\nTo view defined file path "s"'

elif [ $1 ]; then
  echo -n $1 > $FILE && echo -n $1 | xclip -sel clip && echo $'\n'"[+] $1 saved and copied"

else
  echo $'\n[-]Use "help" parameter'
  
fi
