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
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            ;;
                        "See examples")
                            ;;
                        "Back to file commands menu")
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "echo")
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            ;;
                        "See examples")
                            ;;
                        "Back to file commands menu")
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "man")
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            ;;
                        "See examples")
                            ;;
                        "Back to file commands menu")
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "sudo")
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            ;;
                        "See examples")
                            ;;
                        "Back to file commands menu")
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "grep")
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            ;;
                        "See examples")
                            ;;
                        "Back to file commands menu")
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "uname")
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            ;;
                        "See examples")
                            ;;
                        "Back to file commands menu")
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "whoami")
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            ;;
                        "See examples")
                            ;;
                        "Back to file commands menu")
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "chmod")
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            ;;
                        "See examples")
                            ;;
                        "Back to file commands menu")
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "chown")
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            ;;
                        "See examples")
                            ;;
                        "Back to file commands menu")
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "which")
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            ;;
                        "See examples")
                            ;;
                        "Back to file commands menu")
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "history")
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            ;;
                        "See examples")
                            ;;
                        "Back to file commands menu")
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "ps")
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            ;;
                        "See examples")
                            ;;
                        "Back to file commands menu")
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "kill")
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            ;;
                        "See examples")
                            ;;
                        "Back to file commands menu")
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "killall")
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            ;;
                        "See examples")
                            ;;
                        "Back to file commands menu")
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "df")
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            ;;
                        "See examples")
                            ;;
                        "Back to file commands menu")
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "du")
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            ;;
                        "See examples")
                            ;;
                        "Back to file commands menu")
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "nano")
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            ;;
                        "See examples")
                            ;;
                        "Back to file commands menu")
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "vim")
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            ;;
                        "See examples")
                            ;;
                        "Back to file commands menu")
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "nvim")
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            ;;
                        "See examples")
                            ;;
                        "Back to file commands menu")
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "date")
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            ;;
                        "See examples")
                            ;;
                        "Back to file commands menu")
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "uptime")
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            ;;
                        "See examples")
                            ;;
                        "Back to file commands menu")
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "free")
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            ;;
                        "See examples")
                            ;;
                        "Back to file commands menu")
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "lscpu")
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            ;;
                        "See examples")
                            ;;
                        "Back to file commands menu")
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "w")
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            ;;
                        "See examples")
                            ;;
                        "Back to file commands menu")
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
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
