#!/bin/bash
show_header () {
    echo ""
    echo "                          ╔════════════════════════════════╗"
    echo "                          ║      File System Commands      ║"
    echo "                          ║                                ║"
    echo "                          ║   Navigate, create, modify     ║"
    echo "                          ║   and manage files and dirs    ║"
    echo "                          ╚════════════════════════════════╝"
    echo ""

}

show_system_commands() {
    clear
    show_header
    echo ""
    echo "Please select an option: "
    echo ""

    local system_commands=("clear" "echo" "man" "sudo" "grep" "uname" "whoami" "chmod" "chown" "which" "history" "ps" "kill" "killall" "df" "du" "nano" "vim" "nvim" "date" "uptime" "free" "lscpu" "w" "Back to main menu")

    select option in "${system_commands[@]}"; do
        case $option in
            "clear")
                clear
                show_header
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            echo ""
                            echo "═════ MV COMMAND AND FLAGS ═════"
                            echo "mv [option] current path -> new path"
                            echo ""
                            echo "Main Flags:"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "See examples")
                            echo ""
                            echo "═════ EXAMPLES OF MV ═════"
                            echo "══════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "Back to file commands menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to file commands menu."
                            read -p "Press Enter to continue..."
                            echo ""
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "echo")
                clear
                show_header
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            echo ""
                            echo "═════ MV COMMAND AND FLAGS ═════"
                            echo "mv [option] current path -> new path"
                            echo ""
                            echo "Main Flags:"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "See examples")
                            echo ""
                            echo "═════ EXAMPLES OF MV ═════"
                            echo "══════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "Back to file commands menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to file commands menu."
                            read -p "Press Enter to continue..."
                            echo ""
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "man")
                clear
                show_header
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            echo ""
                            echo "═════ MV COMMAND AND FLAGS ═════"
                            echo "mv [option] current path -> new path"
                            echo ""
                            echo "Main Flags:"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "See examples")
                            echo ""
                            echo "═════ EXAMPLES OF MV ═════"
                            echo "══════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "Back to file commands menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to file commands menu."
                            read -p "Press Enter to continue..."
                            echo ""
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "sudo")
                clear
                show_header
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            echo ""
                            echo "═════ MV COMMAND AND FLAGS ═════"
                            echo "mv [option] current path -> new path"
                            echo ""
                            echo "Main Flags:"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "See examples")
                            echo ""
                            echo "═════ EXAMPLES OF MV ═════"
                            echo "══════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "Back to file commands menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to file commands menu."
                            read -p "Press Enter to continue..."
                            echo ""
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "grep")
                clear
                show_header
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            echo ""
                            echo "═════ MV COMMAND AND FLAGS ═════"
                            echo "mv [option] current path -> new path"
                            echo ""
                            echo "Main Flags:"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "See examples")
                            echo ""
                            echo "═════ EXAMPLES OF MV ═════"
                            echo "══════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "Back to file commands menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to file commands menu."
                            read -p "Press Enter to continue..."
                            echo ""
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "uname")
                clear
                show_header
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            echo ""
                            echo "═════ MV COMMAND AND FLAGS ═════"
                            echo "mv [option] current path -> new path"
                            echo ""
                            echo "Main Flags:"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "See examples")
                            echo ""
                            echo "═════ EXAMPLES OF MV ═════"
                            echo "══════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "Back to file commands menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to file commands menu."
                            read -p "Press Enter to continue..."
                            echo ""
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "whoami")
                clear
                show_header
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            echo ""
                            echo "═════ MV COMMAND AND FLAGS ═════"
                            echo "mv [option] current path -> new path"
                            echo ""
                            echo "Main Flags:"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "See examples")
                            echo ""
                            echo "═════ EXAMPLES OF MV ═════"
                            echo "══════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "Back to file commands menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to file commands menu."
                            read -p "Press Enter to continue..."
                            echo ""
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "chmod")
                clear
                show_header
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            echo ""
                            echo "═════ MV COMMAND AND FLAGS ═════"
                            echo "mv [option] current path -> new path"
                            echo ""
                            echo "Main Flags:"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "See examples")
                            echo ""
                            echo "═════ EXAMPLES OF MV ═════"
                            echo "══════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "Back to file commands menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to file commands menu."
                            read -p "Press Enter to continue..."
                            echo ""
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "chown")
                clear
                show_header
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            echo ""
                            echo "═════ MV COMMAND AND FLAGS ═════"
                            echo "mv [option] current path -> new path"
                            echo ""
                            echo "Main Flags:"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "See examples")
                            echo ""
                            echo "═════ EXAMPLES OF MV ═════"
                            echo "══════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "Back to file commands menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to file commands menu."
                            read -p "Press Enter to continue..."
                            echo ""
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "which")
                clear
                show_header
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            echo ""
                            echo "═════ MV COMMAND AND FLAGS ═════"
                            echo "mv [option] current path -> new path"
                            echo ""
                            echo "Main Flags:"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "See examples")
                            echo ""
                            echo "═════ EXAMPLES OF MV ═════"
                            echo "══════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "Back to file commands menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to file commands menu."
                            read -p "Press Enter to continue..."
                            echo ""
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "history")
                clear
                show_header
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            echo ""
                            echo "═════ MV COMMAND AND FLAGS ═════"
                            echo "mv [option] current path -> new path"
                            echo ""
                            echo "Main Flags:"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "See examples")
                            echo ""
                            echo "═════ EXAMPLES OF MV ═════"
                            echo "══════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "Back to file commands menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to file commands menu."
                            read -p "Press Enter to continue..."
                            echo ""
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "ps")
                clear
                show_header
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            echo ""
                            echo "═════ MV COMMAND AND FLAGS ═════"
                            echo "mv [option] current path -> new path"
                            echo ""
                            echo "Main Flags:"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "See examples")
                            echo ""
                            echo "═════ EXAMPLES OF MV ═════"
                            echo "══════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "Back to file commands menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to file commands menu."
                            read -p "Press Enter to continue..."
                            echo ""
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "kill")
                clear
                show_header
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            echo ""
                            echo "═════ MV COMMAND AND FLAGS ═════"
                            echo "mv [option] current path -> new path"
                            echo ""
                            echo "Main Flags:"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "See examples")
                            echo ""
                            echo "═════ EXAMPLES OF MV ═════"
                            echo "══════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "Back to file commands menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to file commands menu."
                            read -p "Press Enter to continue..."
                            echo ""
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "killall")
                clear
                show_header
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            echo ""
                            echo "═════ MV COMMAND AND FLAGS ═════"
                            echo "mv [option] current path -> new path"
                            echo ""
                            echo "Main Flags:"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "See examples")
                            echo ""
                            echo "═════ EXAMPLES OF MV ═════"
                            echo "══════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "Back to file commands menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to file commands menu."
                            read -p "Press Enter to continue..."
                            echo ""
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "df")
                clear
                show_header
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            echo ""
                            echo "═════ MV COMMAND AND FLAGS ═════"
                            echo "mv [option] current path -> new path"
                            echo ""
                            echo "Main Flags:"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "See examples")
                            echo ""
                            echo "═════ EXAMPLES OF MV ═════"
                            echo "══════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "Back to file commands menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to file commands menu."
                            read -p "Press Enter to continue..."
                            echo ""
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "du")
                clear
                show_header
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            echo ""
                            echo "═════ MV COMMAND AND FLAGS ═════"
                            echo "mv [option] current path -> new path"
                            echo ""
                            echo "Main Flags:"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "See examples")
                            echo ""
                            echo "═════ EXAMPLES OF MV ═════"
                            echo "══════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "Back to file commands menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to file commands menu."
                            read -p "Press Enter to continue..."
                            echo ""
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "nano")
                clear
                show_header
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            echo ""
                            echo "═════ MV COMMAND AND FLAGS ═════"
                            echo "mv [option] current path -> new path"
                            echo ""
                            echo "Main Flags:"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "See examples")
                            echo ""
                            echo "═════ EXAMPLES OF MV ═════"
                            echo "══════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "Back to file commands menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to file commands menu."
                            read -p "Press Enter to continue..."
                            echo ""
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "vim")
                clear
                show_header
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            echo ""
                            echo "═════ MV COMMAND AND FLAGS ═════"
                            echo "mv [option] current path -> new path"
                            echo ""
                            echo "Main Flags:"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "See examples")
                            echo ""
                            echo "═════ EXAMPLES OF MV ═════"
                            echo "══════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "Back to file commands menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to file commands menu."
                            read -p "Press Enter to continue..."
                            echo ""
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "nvim")
                clear
                show_header
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            echo ""
                            echo "═════ MV COMMAND AND FLAGS ═════"
                            echo "mv [option] current path -> new path"
                            echo ""
                            echo "Main Flags:"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "See examples")
                            echo ""
                            echo "═════ EXAMPLES OF MV ═════"
                            echo "══════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "Back to file commands menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to file commands menu."
                            read -p "Press Enter to continue..."
                            echo ""
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "date")
                clear
                show_header
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            echo ""
                            echo "═════ MV COMMAND AND FLAGS ═════"
                            echo "mv [option] current path -> new path"
                            echo ""
                            echo "Main Flags:"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "See examples")
                            echo ""
                            echo "═════ EXAMPLES OF MV ═════"
                            echo "══════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "Back to file commands menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to file commands menu."
                            read -p "Press Enter to continue..."
                            echo ""
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "uptime")
                clear
                show_header
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            echo ""
                            echo "═════ MV COMMAND AND FLAGS ═════"
                            echo "mv [option] current path -> new path"
                            echo ""
                            echo "Main Flags:"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "See examples")
                            echo ""
                            echo "═════ EXAMPLES OF MV ═════"
                            echo "══════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "Back to file commands menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to file commands menu."
                            read -p "Press Enter to continue..."
                            echo ""
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "free")
                clear
                show_header
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            echo ""
                            echo "═════ MV COMMAND AND FLAGS ═════"
                            echo "mv [option] current path -> new path"
                            echo ""
                            echo "Main Flags:"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "See examples")
                            echo ""
                            echo "═════ EXAMPLES OF MV ═════"
                            echo "══════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "Back to file commands menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to file commands menu."
                            read -p "Press Enter to continue..."
                            echo ""
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "lscpu")
                clear
                show_header
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            echo ""
                            echo "═════ MV COMMAND AND FLAGS ═════"
                            echo "mv [option] current path -> new path"
                            echo ""
                            echo "Main Flags:"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "See examples")
                            echo ""
                            echo "═════ EXAMPLES OF MV ═════"
                            echo "══════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "Back to file commands menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to file commands menu."
                            read -p "Press Enter to continue..."
                            echo ""
                            break
                            ;;
                        *)
                            echo "Invalid option. Please try again"
                            ;;
                    esac
                done
                ;;

            "w")
                clear
                show_header
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            echo ""
                            echo "═════ MV COMMAND AND FLAGS ═════"
                            echo "mv [option] current path -> new path"
                            echo ""
                            echo "Main Flags:"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "See examples")
                            echo ""
                            echo "═════ EXAMPLES OF MV ═════"
                            echo "══════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "Back to file commands menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to file commands menu."
                            read -p "Press Enter to continue..."
                            echo ""
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
