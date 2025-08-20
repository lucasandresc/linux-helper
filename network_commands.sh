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

show_network_commands() {
    clear
    show_header
    echo ""
    echo "Please select an option: "
    echo ""

    local network_commands=("ping" "wget" "curl" "ssh" "Back to main menu")

    select option in "${network_commands[@]}"; do
        case $option in
            "ping")
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
            "wget")
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

            "curl")
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

            "ssh")
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
                echo "Invalid option. Please try again"
                ;;
        esac
    done
}
