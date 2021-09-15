#!/bin/bash

#install stuff #name is dolphin (will replace real dolphin)
what=dolphin 
extension=.sh

#peut être extension vide
echo "Set executable..."
chmod +x $what$extension



#Check if Already Installed ?
target=$(readlink /usr/bin/dolphin);

if [[ "$target" == *dolphin.sh ]]
then  
    echo $target
    echo "Already installed, please uninstall first."
    exit
fi

#Remplacer Dolphin if not already exists
dolbak=/usr/bin/dolphin_original
 
    echo "Backing up dolphin executable to '$dolbak'"
    sudo mv /usr/bin/dolphin $dolbak
     
    #echo "lien symbolique vers usr bin"
    sudo ln -s "$PWD/$what$extension" /usr/bin/$what
    echo "done."
 