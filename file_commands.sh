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
                clear
                echo ""
                echo "Command: mv"
                echo "Description: Move or rename files and directories"
                echo ""

                select option_mv in "Check command and flags" "See examples" "Back to file commands menu"; do
                    case $option_mv in
                        "Check command and flags")
                            echo ""
                            echo "═════ MV COMMAND AND FLAGS ═════"
                            echo "mv [option] current path -> new path"
                            echo ""
                            echo "Main Flags:"
                            echo "-i : Ask the user for confirmation before overwrite"
                            echo "-v : Show which files are moving to new path"
                            echo "-u : Only moves if the source file is newer"
                            echo "-n : Do not overwrite existing files"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "See examples")
                            echo ""
                            echo "═════ EXAMPLES OF MV ═════"
                            echo "mv file.txt /home/user/ #-> Moves file to a different directory"
                            echo "mv file.txt new_file_name.txt #-> Rename file"
                            echo "mv -i file.txt /path/destiny/ #-> Ask for confirmation"
                            echo "mv -v *.txt documents/ #-> Moves every .txt file and shows which are moving"
                            echo "══════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "Back to file commands menu")
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
           
            "ls")
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

            "cp")
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

            "rm")
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
            
            "find")
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

            "touch")
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
            
            "cd")
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
            
            "cat")
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
            
            "less")
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
            
            "pwd")
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
            
            "zip")
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
            
            "tar")
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
            
            "head")
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
            
            "tail")
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
            
            "mkdir")
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
            
            "rmdir")
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
            
            "file")
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
            
            "wc")
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
                echo "Invalid option. Please try again"
                ;;
        esac
    done
}

