#!/bin/bash

show_file_commands() {
    clear
    echo ""
    echo "                          ╔════════════════════════════════╗"
    echo "                          ║      File System Commands      ║"
    echo "                          ║                                ║"
    echo "                          ║   Navigate, create, modify     ║"
    echo "                          ║   and manage files and dirs    ║"
    echo "                          ╚════════════════════════════════╝"
    echo ""
    echo "Please select an option: "
    echo ""


    local file_commands=("mv" "ls" "cp" "rm" "find" "touch" "cd" "cat" "less" "pwd" "zip" "tar" "head" "tail" "mkdir" "rmdir" "file" "wc" "Back to main menu")


    select option in "${file_commands[@]}"; do
        case $option in
            "mv")
                echo ""
                echo "Command: mv"
                echo "Description: Move or rename files and directories"
                echo ""
                ;;
            "Back to main menu")
                echo ""
                echo "Returning to main menu..."
                read -p "Press Enter to continue..."
                clear
                break
                ;;
            *)
                echo "Invalid option. Please try again"
                ;;
        esac
    done
}

