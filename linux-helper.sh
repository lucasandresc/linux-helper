#!/bin/bash

source ./file_commands.sh
source ./system_commands.sh
source ./network_commands.sh

show_welcome_header () {
    clear
    echo ""
    echo "                          ╔════════════════════════════════╗"
    echo "                          ║     Welcome to Linux Helper    ║"
    echo "                          ║                                ║"
    echo "                          ║  Interactive Command Helper    ║"
    echo "                          ║     for Linux Beginners        ║"
    echo "                          ╚════════════════════════════════╝"
    echo ""
    echo ""


}


show_main_menu () {
    while true; do
        show_welcome_header
        echo "Please select an option: "
        echo ""

        categories=("File Commands" "System Commands" "Network Commands" "Exit")

        select category in "${categories[@]}"; do
            case $category in
                "File Commands")
                    clear
                    show_file_commands
                    break
                    ;;
                "System Commands")
                    clear
                    show_system_commands
                    break
                    ;;
                "Network Commands")
                    clear
                    show_network_commands
                    break
                    ;;
                "Exit")
                    echo "Thanks for using Linux Helper"
                    exit 0
                    ;;
                *)
                    echo "Invalid option. Please try again"
                    ;;
            esac
        done
    done
}
show_main_menu
