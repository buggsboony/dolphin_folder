#!/bin/bash
#echo "'$@'"> ~/dolphin_args.txt

#Argument count is 1
if [[ "$#" == "1" ]]; then

filetype=0
if [ -f "$1" ]; then
filetype=1
fi 
if [ -d "$1" ]; then
filetype=2
fi
#notify-send "filefiletypeok=$filetype"
    if [[  "$filetype" == "1" ]]; then        
        #echo "is a file" , open parent folder and select the file       
        dolphin_original --select  "$1"   
    fi

    if [[  "$filetype" == "2" ]]; then
        #notify-send "is directory"
        #If is a directory open
        dolphin_original "$@"      
    fi


    if [[  "$filetype" == "0" ]]; then 
        #notify-send "bad file"
        #If arg is a bad file, try open parent directory
        parentDir=$(dirname "$1")
        dolphin_original "$parentDir"   
    fi

else
    #Normal 
    dolphin_original "$@"
fi


 