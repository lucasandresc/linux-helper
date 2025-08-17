#!/bin/bash

show_network_commands() {
    clear
    echo ""
    echo "                          ╔════════════════════════════════╗"
    echo "                          ║       Network Commands         ║"
    echo "                          ║                                ║"
    echo "                          ║   Connect, download and        ║"
    echo "                          ║   test network connectivity    ║"
    echo "                          ╚════════════════════════════════╝"
    echo ""
    echo "Please select an option: "
    echo ""

    local network_commands=("ping" "wget" "curl" "ssh" "Back to main menu")

    select option in "${network_commands[@]}"; do
        case $option in
            "ping")
                ;;
            "wget")
                ;;
            "curl")
                ;;
            "ssh")
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
