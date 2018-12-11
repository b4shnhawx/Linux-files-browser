#!/bin/bash

#Clear the terminal 
clear

#The script is always running
while true
do
        #Print the instructions
        echo ""
        echo -e "\e[41m\e[30m------------------------ Files Browser and apps browser ------------------------\e[0m\e[0m"
        echo ""
        echo "To cancel the program press ctrl + C"
        echo "Remeber to use *, ? or . to represent characters. Example: network*"
        echo "Enter the app name or keyword that you want to browse. "

        #Read the the keyboard input and save it to the variable file_to_search
        read -p "Keyword: " file_to_search

        #More instructions
        echo ""
        echo "Enter the absolute path where yo want find the files. By default is /."

        #Read the the keyboard input and save it to the variable app_path
        read -p "Path: " file_path

        echo ""

        #If we dont specified a path...
        if [[ $file_path = "" ]];
        then
                #...then uses the default path (root)
                sudo find / -executable -type f -iname "$file_to_search"
        else
                #...but if we specified some path, use that path
                sudo find $file_path -executable -type f -iname "$file_to_search"
        fi

        echo ""
done
