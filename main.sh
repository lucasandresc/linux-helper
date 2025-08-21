#!/bin/bash

source ./command_helper.sh
source ./program_helper.sh

show_main_header() {
    clear
    echo ""
    echo "                          ╔════════════════════════════════╗"
    echo "                          ║         Linux Helper Hub       ║"
    echo "                          ║                                ║"
    echo "                          ║   Learn Commands or Run Tools  ║"
    echo "                          ║        for Beginners           ║"
    echo "                          ╚════════════════════════════════╝"
    echo ""
    echo "Welcome to the interactive Linux learning"
    echo "and system management tool!"
    echo ""
}

show_main_selection() {
    while true; do
        show_main_header
        echo "What would you like to do today?"
        echo ""

        local main_options=("Learn Linux Commands" "System Tools & Cleanup" "About this tool" "Exit")

        select option in "${main_options[@]}"; do
            case $option in
                "Learn Linux Commands")
                    clear
                    show_main_menu
                    break
                    ;;
                "System Tools & Cleanup")
                    clear
                    show_cleanup_menu
                    break
                    ;;
                "About this tool")
                    clear
                    show_about
                    break
                    ;;
                "Exit")
                    clear
                    echo "Thanks for using Linux Learning Center!"
                    echo "Keep practicing and happy learning!"
                    exit 0
                    ;;
                *)
                    echo "Invalid option. Please try again."
            esac
        done
    done
}

show_about() {
    clear
    show_main_header
    echo "=== ABOUT THIS TOOL ==="
    echo ""
    echo "Purpose:"
    echo "  • This tool was created to help people who want to migrate"
    echo "   to Linux but are intimidated by the terminal."
    echo ""
    echo "What you'll find here:"
    echo "   • Essential Linux commands with examples and explanations"
    echo "   • System cleanup and maintenance tools"
    echo "   • Safe, beginner-friendly operations"
    echo ""
    echo "Philosophy:"
    echo "  • Learn by doing! Each command shows you what it does"
    echo "   before executing, so you understand rather than just copy."
    echo ""
    echo " • From the terminal-shy to terminal-confident!"
    echo ""
    echo "Created by: Lucas Andrés Cabrera"
    echo "Contact: yellowduckygg@gmail.com"
    echo "Github: github.com/lucasandresc"
    echo "Press Enter to return to main menu..."
    read
}

check_dependencies() {
    local missing_files=()

    if [ ! -f "./command_helper.sh" ]; then
        missing_files+=("command_helper.sh")
    fi

    if [ ! -f "./program_helper.sh" ]; then
        missing_files+=("program_helper.sh")
    fi

    if [ ${#missing_files[@]} -gt 0 ]; then
        printf " • %s\n" "${missing_files[@]}"
        echo ""
        echo "Please ensure all files are in the same directory"
        exit 1
    fi
}

main() {
    check_dependencies
    show_main_selection
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    main
fi

