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
                echo "Command: clear"
                echo "Description: Clear the terminal screen"
                echo ""

                select option_clear in "View command and options" "View examples" "Return to previous menu"; do
                    case $option_clear in
                        "View command and options")
                            echo ""
                            echo "═════ CLEAR COMMAND AND ITS OPTIONS ═════"
                            echo "clear"
                            echo ""
                            echo "NOTE: clear does not use flags or options"
                            echo "It simply clears the terminal screen"
                            echo "═════════════════════════════════════════"
                            read -p "Press enter to return to 'clear' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ CLEAR COMMAND EXAMPLES ═════"
                            echo "clear -> Clear the terminal screen"
                            echo "clear && ls -> Clear screen then list files"
                            echo "clear ; pwd -> Clear screen then show current directory"
                            echo "══════════════════════════════════"
                            read -p "Press enter to return to 'clear' menu... "
                            echo ""
                            ;;
                        "Return to previous menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to previous menu."
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
                echo "Command: echo"
                echo "Description: Display text on the terminal"
                echo ""

                select option_echo in "View command and options" "View examples" "Return to previous menu"; do
                    case $option_echo in
                        "View command and options")
                            echo ""
                            echo "═════ ECHO COMMAND AND ITS OPTIONS ═════"
                            echo "echo [text]"
                            echo ""
                            echo "Main Options:"
                            echo "-n : Don't add newline at the end"
                            echo "-e : Enable interpretation of backslash escapes"
                            echo "\\n : New line (use with -e)"
                            echo "\\t : Tab (use with -e)"
                            echo "════════════════════════════════════════"
                            read -p "Press enter to return to 'echo' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ ECHO COMMAND EXAMPLES ═════"
                            echo "echo 'Hello World' -> Display text"
                            echo "echo -n 'No newline' -> Display without newline"
                            echo "echo -e 'Line 1\\nLine 2' -> Display with newline"
                            echo "echo -e 'Name:\\tJohn' -> Display with tab"
                            echo "echo \$HOME -> Display home directory path"
                            echo "═════════════════════════════════"
                            read -p "Press enter to return to 'echo' menu... "
                            echo ""
                            ;;
                        "Return to previous menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to previous menu."
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
                echo "Command: man"
                echo "Description: Display manual pages for commands"
                echo ""

                select option_man in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_man in
                        "View command and flags")
                            echo ""
                            echo "═════ MAN COMMAND AND ITS FLAGS ═════"
                            echo "man [options] command"
                            echo ""
                            echo "Main Flags:"
                            echo "-k : Search for keywords in manual pages"
                            echo "-f : Display short description"
                            echo "-a : Show all manual pages for command"
                            echo "═════════════════════════════════════"
                            read -p "Press enter to return to 'man' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ MAN COMMAND EXAMPLES ═════"
                            echo "man ls -> Show manual for ls command"
                            echo "man -k copy -> Search manuals containing 'copy'"
                            echo "man -f cp -> Show brief description of cp"
                            echo "man -a printf -> Show all manual pages for printf"
                            echo "════════════════════════════════"
                            read -p "Press enter to return to 'man' menu... "
                            echo ""
                            ;;
                        "Return to previous menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to previous menu."
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
                echo "Command: sudo"
                echo "Description: Execute commands as another user (usually root)"
                echo ""

                select option_sudo in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_sudo in
                        "View command and flags")
                            echo ""
                            echo "═════ SUDO COMMAND AND ITS FLAGS ═════"
                            echo "sudo [options] command"
                            echo ""
                            echo "Main Flags:"
                            echo "-u : Run command as specific user"
                            echo "-i : Simulate initial login"
                            echo "-s : Run shell as target user"
                            echo "-l : List allowed commands for user"
                            echo "══════════════════════════════════════"
                            read -p "Press enter to return to 'sudo' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ SUDO COMMAND EXAMPLES ═════"
                            echo "sudo apt update -> Run apt update as root"
                            echo "sudo -u john ls /home/john -> Run ls as user john"
                            echo "sudo -i -> Start root shell session"
                            echo "sudo -s -> Start shell as root"
                            echo "sudo -l -> List what commands you can run with sudo"
                            echo "═════════════════════════════════"
                            read -p "Press enter to return to 'sudo' menu... "
                            echo ""
                            ;;
                        "Return to previous menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to previous menu."
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
                echo "Command: grep"
                echo "Description: Search text patterns in files"
                echo ""

                select option_grep in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_grep in
                        "View command and flags")
                            echo ""
                            echo "═════ GREP COMMAND AND ITS FLAGS ═════"
                            echo "grep [options] pattern file"
                            echo ""
                            echo "Main Flags:"
                            echo "-i : Ignore case (case insensitive)"
                            echo "-n : Show line numbers"
                            echo "-r : Search recursively in directories"
                            echo "-v : Show lines that don't match"
                            echo "══════════════════════════════════════"
                            read -p "Press enter to return to 'grep' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ GREP COMMAND EXAMPLES ═════"
                            echo "grep 'hello' file.txt -> Find 'hello' in file"
                            echo "grep -i 'HELLO' file.txt -> Find 'hello' ignoring case"
                            echo "grep -n 'error' log.txt -> Find 'error' and show line numbers"
                            echo "grep -r 'function' /home/user/ -> Search 'function' in all files"
                            echo "grep -v 'comment' script.sh -> Show lines without 'comment'"
                            echo "═════════════════════════════════"
                            read -p "Press enter to return to 'grep' menu... "
                            echo ""
                            ;;
                        "Return to previous menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to previous menu."
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
                echo "Command: uname"
                echo "Description: Display system information"
                echo ""

                select option_uname in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_uname in
                        "View command and flags")
                            echo ""
                            echo "═════ UNAME COMMAND AND ITS FLAGS ═════"
                            echo "uname [options]"
                            echo ""
                            echo "Main Flags:"
                            echo "-a : Show all system information"
                            echo "-s : Show kernel name (default)"
                            echo "-r : Show kernel release"
                            echo "-m : Show machine hardware name"
                            echo "═══════════════════════════════════════"
                            read -p "Press enter to return to 'uname' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ UNAME COMMAND EXAMPLES ═════"
                            echo "uname -> Show kernel name"
                            echo "uname -a -> Show all system information"
                            echo "uname -r -> Show kernel version"
                            echo "uname -m -> Show machine type (x86_64, arm, etc.)"
                            echo "══════════════════════════════════"
                            read -p "Press enter to return to 'uname' menu... "
                            echo ""
                            ;;
                        "Return to previous menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to previous menu."
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
                echo "Command: whoami"
                echo "Description: Display current username"
                echo ""

                select option_whoami in "View command and options" "View examples" "Return to previous menu"; do
                    case $option_whoami in
                        "View command and options")
                            echo ""
                            echo "═════ WHOAMI COMMAND AND ITS OPTIONS ═════"
                            echo "whoami"
                            echo ""
                            echo "NOTE: whoami does not use flags or options"
                            echo "It simply displays the current username"
                            echo "══════════════════════════════════════════"
                            read -p "Press enter to return to 'whoami' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ WHOAMI COMMAND EXAMPLES ═════"
                            echo "whoami -> Display current username"
                            echo "sudo whoami -> Display 'root' when using sudo"
                            echo "echo \"Hello \$(whoami)\" -> Use in scripts or commands"
                            echo "═══════════════════════════════════"
                            read -p "Press enter to return to 'whoami' menu... "
                            echo ""
                            ;;
                        "Return to previous menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to previous menu."
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
                echo "Command: chmod"
                echo "Description: Change file permissions"
                echo ""

                select option_chmod in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_chmod in
                        "View command and flags")
                            echo ""
                            echo "═════ CHMOD COMMAND AND ITS FLAGS ═════"
                            echo "chmod [options] permissions file"
                            echo ""
                            echo "Main Flags:"
                            echo "-R : Change permissions recursively"
                            echo "-v : Verbose output (show changes)"
                            echo "-c : Show only when changes are made"
                            echo "═══════════════════════════════════════"
                            read -p "Press enter to return to 'chmod' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ CHMOD COMMAND EXAMPLES ═════"
                            echo "chmod 755 script.sh -> Make file executable (rwxr-xr-x)"
                            echo "chmod +x script.sh -> Add execute permission"
                            echo "chmod -w file.txt -> Remove write permission"
                            echo "chmod -R 644 folder/ -> Set permissions recursively"
                            echo "chmod -v +x *.sh -> Verbose output when adding execute"
                            echo "══════════════════════════════════"
                            read -p "Press enter to return to 'chmod' menu... "
                            echo ""
                            ;;
                        "Return to previous menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to previous menu."
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
                echo "Command: chown"
                echo "Description: Change file ownership"
                echo ""

                select option_chown in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_chown in
                        "View command and flags")
                            echo ""
                            echo "═════ CHOWN COMMAND AND ITS FLAGS ═════"
                            echo "chown [options] user:group file"
                            echo ""
                            echo "Main Flags:"
                            echo "-R : Change ownership recursively"
                            echo "-v : Verbose output (show changes)"
                            echo "-c : Show only when changes are made"
                            echo "═══════════════════════════════════════"
                            read -p "Press enter to return to 'chown' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ CHOWN COMMAND EXAMPLES ═════"
                            echo "chown john file.txt -> Change owner to john"
                            echo "chown john:users file.txt -> Change owner to john and group to users"
                            echo "chown :admin file.txt -> Change only group to admin"
                            echo "chown -R john:users folder/ -> Change ownership recursively"
                            echo "chown -v john *.txt -> Verbose output when changing owner"
                            echo "══════════════════════════════════"
                            read -p "Press enter to return to 'chown' menu... "
                            echo ""
                            ;;
                        "Return to previous menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to previous menu."
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
                echo "Command: which"
                echo "Description: Locate a command and show its path"
                echo ""

                select option_which in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_which in
                        "View command and flags")
                            echo ""
                            echo "═════ WHICH COMMAND AND ITS FLAGS ═════"
                            echo "which [options] command"
                            echo ""
                            echo "Main Flags:"
                            echo "-a : Show all locations of command"
                            echo "-s : Silent mode (no output, just exit code)"
                            echo "═══════════════════════════════════════"
                            read -p "Press enter to return to 'which' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ WHICH COMMAND EXAMPLES ═════"
                            echo "which ls -> Show path of ls command"
                            echo "which python -> Show path of python"
                            echo "which -a python -> Show all python installations"
                            echo "which -s git && echo 'Git is installed' -> Check if git exists"
                            echo "══════════════════════════════════"
                            read -p "Press enter to return to 'which' menu... "
                            echo ""
                            ;;
                        "Return to previous menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to previous menu."
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
                echo "Command: history"
                echo "Description: Display command history"
                echo ""

                select option_history in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_history in
                        "View command and flags")
                            echo ""
                            echo "═════ HISTORY COMMAND AND ITS FLAGS ═════"
                            echo "history [options] [number]"
                            echo ""
                            echo "Main Flags:"
                            echo "-c : Clear the history list"
                            echo "-d : Delete specific history entry"
                            echo "-a : Append new history lines to file"
                            echo "-w : Write current history to file"
                            echo "═════════════════════════════════════════"
                            read -p "Press enter to return to 'history' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ HISTORY COMMAND EXAMPLES ═════"
                            echo "history -> Show all command history"
                            echo "history 10 -> Show last 10 commands"
                            echo "history -c -> Clear all history"
                            echo "history -d 15 -> Delete history entry number 15"
                            echo "!10 -> Execute command number 10 from history"
                            echo "!! -> Execute last command"
                            echo "════════════════════════════════════"
                            read -p "Press enter to return to 'history' menu... "
                            echo ""
                            ;;
                        "Return to previous menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to previous menu."
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
                echo "Command: ps"
                echo "Description: Display running processes"
                echo ""

                select option_ps in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_ps in
                        "View command and flags")
                            echo ""
                            echo "═════ PS COMMAND AND ITS FLAGS ═════"
                            echo "ps [options]"
                            echo ""
                            echo "Main Flags:"
                            echo "aux : Show all processes for all users"
                            echo "-ef : Show all processes in full format"
                            echo "-u : Show processes for specific user"
                            echo "-p : Show process by PID"
                            echo "════════════════════════════════════"
                            read -p "Press enter to return to 'ps' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ PS COMMAND EXAMPLES ═════"
                            echo "ps -> Show current user processes"
                            echo "ps aux -> Show all running processes"
                            echo "ps -ef -> Show all processes in full format"
                            echo "ps -u john -> Show processes running by user john"
                            echo "ps -p 1234 -> Show details of process ID 1234"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'ps' menu... "
                            echo ""
                            ;;
                        "Return to previous menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to previous menu."
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
                echo "Command: kill"
                echo "Description: Terminate processes by PID"
                echo ""

                select option_kill in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_kill in
                        "View command and flags")
                            echo ""
                            echo "═════ KILL COMMAND AND ITS FLAGS ═════"
                            echo "kill [options] PID"
                            echo ""
                            echo "Main Flags:"
                            echo "-9 : Force kill (SIGKILL)"
                            echo "-15 : Graceful termination (SIGTERM - default)"
                            echo "-l : List all available signals"
                            echo "-s : Specify signal by name"
                            echo "══════════════════════════════════════"
                            read -p "Press enter to return to 'kill' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ KILL COMMAND EXAMPLES ═════"
                            echo "kill 1234 -> Gracefully terminate process ID 1234"
                            echo "kill -9 1234 -> Force kill process ID 1234"
                            echo "kill -15 1234 -> Send SIGTERM to process (default)"
                            echo "kill -l -> List all available kill signals"
                            echo "kill -s TERM 1234 -> Send SIGTERM signal by name"
                            echo "═════════════════════════════════"
                            read -p "Press enter to return to 'kill' menu... "
                            echo ""
                            ;;
                        "Return to previous menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to previous menu."
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
                echo "Command: killall"
                echo "Description: Terminate processes by name"
                echo ""

                select option_killall in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_killall in
                        "View command and flags")
                            echo ""
                            echo "═════ KILLALL COMMAND AND ITS FLAGS ═════"
                            echo "killall [options] process_name"
                            echo ""
                            echo "Main Flags:"
                            echo "-9 : Force kill all processes"
                            echo "-i : Interactive mode (ask before killing)"
                            echo "-v : Verbose mode (show what's killed)"
                            echo "-u : Kill processes by specific user"
                            echo "═════════════════════════════════════════"
                            read -p "Press enter to return to 'killall' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ KILLALL COMMAND EXAMPLES ═════"
                            echo "killall firefox -> Kill all firefox processes"
                            echo "killall -9 chrome -> Force kill all chrome processes"
                            echo "killall -i notepad -> Ask before killing notepad processes"
                            echo "killall -v gedit -> Verbose output when killing gedit"
                            echo "killall -u john firefox -> Kill john's firefox processes"
                            echo "════════════════════════════════════"
                            read -p "Press enter to return to 'killall' menu... "
                            echo ""
                            ;;
                        "Return to previous menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to previous menu."
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
                echo "Command: df"
                echo "Description: Display filesystem disk space usage"
                echo ""

                select option_df in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_df in
                        "View command and flags")
                            echo ""
                            echo "═════ DF COMMAND AND ITS FLAGS ═════"
                            echo "df [options] [filesystem]"
                            echo ""
                            echo "Main Flags:"
                            echo "-h : Human readable format (KB, MB, GB)"
                            echo "-T : Show filesystem type"
                            echo "-i : Show inode information"
                            echo "-a : Show all filesystems including dummy ones"
                            echo "════════════════════════════════════"
                            read -p "Press enter to return to 'df' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ DF COMMAND EXAMPLES ═════"
                            echo "df -> Show disk usage for all mounted filesystems"
                            echo "df -h -> Show disk usage in human readable format"
                            echo "df -T -> Show filesystem types"
                            echo "df -h /home -> Show usage for /home directory"
                            echo "df -i -> Show inode usage instead of blocks"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'df' menu... "
                            echo ""
                            ;;
                        "Return to previous menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to previous menu."
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
                echo "Command: du"
                echo "Description: Display directory space usage"
                echo ""

                select option_du in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_du in
                        "View command and flags")
                            echo ""
                            echo "═════ DU COMMAND AND ITS FLAGS ═════"
                            echo "du [options] [directory]"
                            echo ""
                            echo "Main Flags:"
                            echo "-h : Human readable format (KB, MB, GB)"
                            echo "-s : Show only total for each argument"
                            echo "-a : Show sizes for all files, not just directories"
                            echo "-c : Display grand total at the end"
                            echo "════════════════════════════════════"
                            read -p "Press enter to return to 'du' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ DU COMMAND EXAMPLES ═════"
                            echo "du -> Show space usage for current directory"
                            echo "du -h -> Show usage in human readable format"
                            echo "du -s /home/* -> Show total size of each item in /home"
                            echo "du -sh Documents/ -> Show total size of Documents directory"
                            echo "du -a -h -> Show size of all files and directories"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'du' menu... "
                            echo ""
                            ;;
                        "Return to previous menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to previous menu."
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
                echo "Command: nano"
                echo "Description: Simple text editor for beginners"
                echo ""

                select option_nano in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_nano in
                        "View command and flags")
                            echo ""
                            echo "═════ NANO COMMAND AND ITS FLAGS ═════"
                            echo "nano [options] filename"
                            echo ""
                            echo "Main Flags:"
                            echo "-l : Show line numbers"
                            echo "-m : Enable mouse support"
                            echo "-w : Disable line wrapping"
                            echo "+LINE : Start at specific line number"
                            echo "══════════════════════════════════════"
                            read -p "Press enter to return to 'nano' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ NANO COMMAND EXAMPLES ═════"
                            echo "nano file.txt -> Open file.txt in nano editor"
                            echo "nano -l script.sh -> Open script.sh with line numbers"
                            echo "nano -m document.txt -> Open with mouse support enabled"
                            echo "nano +25 file.txt -> Open file.txt and go to line 25"
                            echo "nano -> Create new file (save with Ctrl+O)"
                            echo "Basic shortcuts: Ctrl+O (save), Ctrl+X (exit)"
                            echo "═════════════════════════════════"
                            read -p "Press enter to return to 'nano' menu... "
                            echo ""
                            ;;
                        "Return to previous menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to previous menu."
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
                echo "Command: vim"
                echo "Description: Advanced text editor with modes"
                echo ""

                select option_vim in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_vim in
                        "View command and flags")
                            echo ""
                            echo "═════ VIM COMMAND AND ITS FLAGS ═════"
                            echo "vim [options] filename"
                            echo ""
                            echo "Main Flags:"
                            echo "+LINE : Start at specific line number"
                            echo "-R : Read-only mode"
                            echo "-r : Recovery mode for crashed files"
                            echo "-n : No swap file"
                            echo "═════════════════════════════════════"
                            read -p "Press enter to return to 'vim' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ VIM COMMAND EXAMPLES ═════"
                            echo "vim file.txt -> Open file.txt in vim"
                            echo "vim +25 script.sh -> Open script.sh at line 25"
                            echo "vim -R document.txt -> Open in read-only mode"
                            echo "vim -r crashed_file.txt -> Recover crashed file"
                            echo "Basic commands: :w (save), :q (quit), :wq (save & quit)"
                            echo "Press 'i' to enter insert mode, 'Esc' to exit"
                            echo "════════════════════════════════"
                            read -p "Press enter to return to 'vim' menu... "
                            echo ""
                            ;;
                        "Return to previous menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to previous menu."
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
                echo "Command: nvim"
                echo "Description: Modern version of vim with improvements"
                echo ""

                select option_nvim in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_nvim in
                        "View command and flags")
                            echo ""
                            echo "═════ NVIM COMMAND AND ITS FLAGS ═════"
                            echo "nvim [options] filename"
                            echo ""
                            echo "Main Flags:"
                            echo "+LINE : Start at specific line number"
                            echo "-R : Read-only mode"
                            echo "-r : Recovery mode for crashed files"
                            echo "-d : Diff mode (compare files)"
                            echo "══════════════════════════════════════"
                            read -p "Press enter to return to 'nvim' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ NVIM COMMAND EXAMPLES ═════"
                            echo "nvim file.txt -> Open file.txt in neovim"
                            echo "nvim +25 script.sh -> Open script.sh at line 25"
                            echo "nvim -R document.txt -> Open in read-only mode"
                            echo "nvim -d file1.txt file2.txt -> Compare two files"
                            echo "Same as vim: :w (save), :q (quit), :wq (save & quit)"
                            echo "Press 'i' for insert mode, 'Esc' to exit insert mode"
                            echo "═════════════════════════════════"
                            read -p "Press enter to return to 'nvim' menu... "
                            echo ""
                            ;;
                        "Return to previous menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to previous menu."
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
                echo "Command: date"
                echo "Description: Display or set system date"
                echo ""

                select option_date in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_date in
                        "View command and flags")
                            echo ""
                            echo "═════ DATE COMMAND AND ITS FLAGS ═════"
                            echo "date [options] [format]"
                            echo ""
                            echo "Main Flags:"
                            echo "-d : Display specific date"
                            echo "-u : Display UTC time"
                            echo "-R : Display in RFC 2822 format"
                            echo "+FORMAT : Custom format output"
                            echo "══════════════════════════════════════"
                            read -p "Press enter to return to 'date' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ DATE COMMAND EXAMPLES ═════"
                            echo "date -> Show current date and time"
                            echo "date -u -> Show UTC time"
                            echo "date -R -> Show date in email format"
                            echo "date +'%Y-%m-%d' -> Show date as YYYY-MM-DD"
                            echo "date +'%H:%M:%S' -> Show only time"
                            echo "date -d '2 days ago' -> Show date from 2 days ago"
                            echo "═════════════════════════════════"
                            read -p "Press enter to return to 'date' menu... "
                            echo ""
                            ;;
                        "Return to previous menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to previous menu."
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
                echo "Command: uptime"
                echo "Description: Show how long system has been running"
                echo ""

                select option_uptime in "View command and options" "View examples" "Return to previous menu"; do
                    case $option_uptime in
                        "View command and options")
                            echo ""
                            echo "═════ UPTIME COMMAND AND ITS OPTIONS ═════"
                            echo "uptime [options]"
                            echo ""
                            echo "Main Options:"
                            echo "-p : Show uptime in pretty format"
                            echo "-s : Show when system was started"
                            echo "══════════════════════════════════════════"
                            read -p "Press enter to return to 'uptime' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ UPTIME COMMAND EXAMPLES ═════"
                            echo "uptime -> Show system uptime and load average"
                            echo "uptime -p -> Show uptime in readable format"
                            echo "uptime -s -> Show when system was started"
                            echo "═══════════════════════════════════"
                            read -p "Press enter to return to 'uptime' menu... "
                            echo ""
                            ;;
                        "Return to previous menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to previous menu."
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
                echo "Command: free"
                echo "Description: Display memory usage information"
                echo ""

                select option_free in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_free in
                        "View command and flags")
                            echo ""
                            echo "═════ FREE COMMAND AND ITS FLAGS ═════"
                            echo "free [options]"
                            echo ""
                            echo "Main Flags:"
                            echo "-h : Human readable format (KB, MB, GB)"
                            echo "-m : Display in megabytes"
                            echo "-g : Display in gigabytes"
                            echo "-t : Display total memory line"
                            echo "══════════════════════════════════════"
                            read -p "Press enter to return to 'free' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ FREE COMMAND EXAMPLES ═════"
                            echo "free -> Show memory usage in bytes"
                            echo "free -h -> Show memory usage in human readable format"
                            echo "free -m -> Show memory usage in megabytes"
                            echo "free -g -> Show memory usage in gigabytes"
                            echo "free -t -> Show total memory line at bottom"
                            echo "═════════════════════════════════"
                            read -p "Press enter to return to 'free' menu... "
                            echo ""
                            ;;
                        "Return to previous menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to previous menu."
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
                echo "Command: lscpu"
                echo "Description: Display CPU architecture information"
                echo ""

                select option_lscpu in "View command and options" "View examples" "Return to previous menu"; do
                    case $option_lscpu in
                        "View command and options")
                            echo ""
                            echo "═════ LSCPU COMMAND AND ITS OPTIONS ═════"
                            echo "lscpu [options]"
                            echo ""
                            echo "NOTE: lscpu typically doesn't need flags for basic use"
                            echo "It displays comprehensive CPU information by default"
                            echo "═════════════════════════════════════════"
                            read -p "Press enter to return to 'lscpu' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ LSCPU COMMAND EXAMPLES ═════"
                            echo "lscpu -> Show detailed CPU information"
                            echo "lscpu | grep 'CPU(s)' -> Show number of CPUs"
                            echo "lscpu | grep 'Model name' -> Show CPU model"
                            echo "lscpu | grep 'Architecture' -> Show CPU architecture"
                            echo "══════════════════════════════════"
                            read -p "Press enter to return to 'lscpu' menu... "
                            echo ""
                            ;;
                        "Return to previous menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to previous menu."
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
                echo "Command: w"
                echo "Description: Show who is logged in and what they're doing"
                echo ""

                select option_w in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_w in
                        "View command and flags")
                            echo ""
                            echo "═════ W COMMAND AND ITS FLAGS ═════"
                            echo "w [options] [user]"
                            echo ""
                            echo "Main Flags:"
                            echo "-h : Don't print header"
                            echo "-s : Short format (no login time, JCPU, PCPU)"
                            echo "-u : Ignore username when figuring current process"
                            echo "═══════════════════════════════════"
                            read -p "Press enter to return to 'w' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ W COMMAND EXAMPLES ═════"
                            echo "w -> Show all logged in users and their activity"
                            echo "w john -> Show activity for user john only"
                            echo "w -h -> Show user activity without header"
                            echo "w -s -> Show user activity in short format"
                            echo "══════════════════════════════"
                            read -p "Press enter to return to 'w' menu... "
                            echo ""
                            ;;
                        "Return to previous menu")
                            clear
                            show_header
                            echo ""
                            echo "Returning to previous menu."
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
