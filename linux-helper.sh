#!/bin/bash

clear
echo "╔════════════════════════════════╗"
echo "║     Welcome to Linux Helper    ║"
echo "║                                ║"
echo "║  Interactive Command Helper    ║"
echo "║     for Linux Beginners        ║"
echo "╚════════════════════════════════╝"
echo ""

echo "Please select an option: "

source ./file_commands.sh
source ./system_commands.sh
source ./network_commands.sh

echo ""

categories=("File Commands" "System Commands" "Network Commands" "Exit")

select category in "${categories[@]}"; do
    case $category in
        "File Commands")
            show_file_commands
            ;;
        "System Commands")
            show_system_commands
            ;;
        "Network Commands")
            show_network_commands
            ;;
        "Exit")
            break
            ;;
    esac
done
