#!/bin/bash

#Argument count is 1
if [[ "$#" == "1" ]]; then

   if [ -f "$1" ];
    then
        #echo "is a file" , open parent folder and select the file       
        dolphin_original --select  "$1"   
    fi
else
    #Normal 
    dolphin_original "$@"
fi


 