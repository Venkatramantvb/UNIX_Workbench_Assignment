#!/bin/bash
function getting_and_checking_input_value {
while true
do
 echo "Guess the number of files present in the current directory :"
 read guess_number_of_files
 export guess_number_of_files=$guess_number_of_files
 if [[ ! $guess_number_of_files =~ ^[0-9]+$ ]]
 then
  echo "Enter a valid number"
  continue
 else
  break
 fi
done
}

function getting_actual_files_list {
export actual_number_of_files=$(ls | wc -l)
export try=1
getting_and_checking_input_value
}

getting_actual_files_list

while true
do
   if [ $try -eq 0 ]
   then
    getting_and_checking_input_value
   fi   
   if [ $guess_number_of_files -ne $guess_number_of_files 2>/dev/null ]
   then
    continue
   fi
   if [ $guess_number_of_files == $actual_number_of_files ]
   then
    echo "Congratulations your guess is right!!!"
    exit
   
   elif [ $guess_number_of_files -gt $actual_number_of_files ]
   then
    echo "Your guess is higher than the actual number of files in the present working directory"
    echo " "
   else
    echo "Your guess is lower than the actual number of files in the present working directory"
    echo " "
   fi
   try=0
done
