#!/bin/bash

actual_number_of_files=$(ls | wc -l)

try=1
#read -p "Guess the number of files present in the directory : " guess_number_of_files

while true
#while [[ $guess_number_of_files -ge 0 ]]
do
 #  if [ $try != 1 ]
 #  then
   read -p "Guess the number of files present in the directory : " guess_number_of_files
 # read guess_number_of_files
   if [ $guess_number_of_files -ne $guess_number_of_files 2>/dev/null ]
   then
    continue
   fi

  # fi

   if [ $guess_number_of_files == $actual_number_of_files ]
   then
    exit
   elif [ $guess_number_of_files -gt $actual_number_of_files ]
    then
     echo "guess_number_of_files is higher than actual_number_of_files"    
     echo " "
   else
    echo "guess_number_of_files is lower than actual_number_of_files"
    echo " "
   fi

   try=0

done
