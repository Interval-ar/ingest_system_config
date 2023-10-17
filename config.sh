#!/bin/bash
# Bash Menu Script Example

echo "Elegi la version de polkit"
PS3='Please enter your choice: '
options=("0.106" "0.106" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "0.106")
            mkdir -p  /etc/polkit-1/localauthority/10-vendor.d/
            ;;
        "0.106")
            mkdir -p -v /etc/polkit-1/rules.d/;;
	    echo "test";;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

