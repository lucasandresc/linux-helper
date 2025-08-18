#!/bin/bash

show_system_commands() {
    clear
    echo ""
    echo "                          ╔════════════════════════════════╗"
    echo "                          ║       System Commands          ║"
    echo "                          ║                                ║"
    echo "                          ║  Monitor processes, users      ║"
    echo "                          ║  and system information        ║"
    echo "                          ╚════════════════════════════════╝"
    echo ""
    echo "Please select an option: "
    echo ""

    local system_commands=("clear" "echo" "man" "sudo" "grep" "uname" "whoami" "chmod" "chown" "which" "history" "ps" "kill" "killall" "df" "du" "nano" "vim" "nvim" "date" "uptime" "free" "lscpu" "w" "Back to main menu")

    select option in "${system_commands[@]}"; do
        case $option in
            "clear")
                ;;
            "echo")
                ;;
            "man")
                ;;
            "sudo")
                ;;
            "grep")
                ;;
            "uname")
                ;;
            "whoami")
                ;;
            "chmod")
                ;;
            "chown")
                ;;
            "which")
                ;;
            "history")
                ;;
            "ps")
                ;;
            "kill")
                ;;
            "killall")
                ;;
            "df")
                ;;
            "du")
                ;;
            "nano")
                ;;
            "vim")
                ;;
            "nvim")
                ;;
            "date")
                ;;
            "uptime")
                ;;
            "free")
                ;;
            "lscpu")
                ;;
            "w")
                ;;

            "Back to main menu")
                echo ""
                echo "Returning to main menu..."
                read -p "Press Enter to continue..."
                clear
                break
                ;;
            *)
                "Invalid option. Please try again"
        esac
    done
}
