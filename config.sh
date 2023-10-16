#!/bin/bash
# Bash Menu Script Example

PS3='Please enter your choice: '
options=("Polkit version < 0.106" "polkit version ≥ 0.106" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Polkit version < 0.106")
            echo "mover archivo .pkla"
            ;;
        "Polkit version ≥ 0.106")
            echo "mover archivo .rules"
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done




