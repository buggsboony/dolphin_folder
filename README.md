# dolphin_folder
Repares broken open dolphin folder In vscode or In browser (point out file in the downloaded path)
backup /usr/bin/dolphin(executable) and replace by /usr/bin/dolphin (bash script that will launch dolphin)
Issue / Symptoms :
$> dolphin ./Images/img.png   #open default image viewer instead of opening Images folder and select img.png
After installing dolphin_folder :
$> dolphin ./Images/img.png   #opens Images folder and select img.png
