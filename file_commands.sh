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

show_file_commands() {
    clear
    show_header
    echo ""
    echo "Please select an option: "
    echo ""


    local file_commands=("mv" "ls" "cp" "rm" "find" "touch" "cd" "cat" "less" "pwd" "zip" "tar" "head" "tail" "mkdir" "rmdir" "file" "wc" "Back to main menu")


    select option in "${file_commands[@]}"; do
        case $option in
            "mv")
                clear
                show_header
                echo ""
                echo "Command: mv"
                echo "Description: Move or rename files and directories"
                echo ""

                select option_mv in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_mv in
                        "View command and flags")
                            echo ""
                            echo "═════ MV COMMAND AND ITS FLAGS ═════"
                            echo "mv [option] source path -> new path"
                            echo ""
                            echo "Main Flags:"
                            echo "-i : Ask the user for confirmation before overwrite"
                            echo "-v : Show which files are moving to new path"
                            echo "-u : Only moves if the source file is newer"
                            echo "-n : Do not overwrite existing files"
                            echo "════════════════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ MV COMMAND EXAMPLES ═════"
                            echo "mv file.txt /home/user/ -> Moves file to a different directory"
                            echo "mv file.txt new_file_name.txt -> Rename file"
                            echo "mv -i file.txt /path/destiny/ -> Ask for confirmation"
                            echo "mv -v *.txt documents/ -> Moves every .txt file and shows which are moving"
                            echo "mv -n file.txt /home/user/Test/ -> If Test has a file with the same name, It will not move another file with the same name."
                            echo "mv -u file.txt /home/user/Test/ -> If file.txt from home/ is newer than file.txt in Test/, It will mv file.txt from home/ overwriting it in Test/"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'mv' menu... "
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

            "ls")
                clear
                show_header
                echo ""
                echo "Command: ls"
                echo "Description: List directory contents"
                echo ""

                select option_ls in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_ls in
                        "View command and flags")
                            echo ""
                            echo "═════ LS COMMAND AND ITS FLAGS ═════"
                            echo "ls [options] [directory]"
                            echo ""
                            echo "Main Flags:"
                            echo "-l : List in long format with details"
                            echo "-a : Show hidden files"
                            echo "-h : Sizes in readable format"
                            echo "-R : List recursively"
                            echo "-t : Sort by modification date"
                            echo "════════════════════════════════════"
                            read -p "Press enter to return to 'ls' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ LS COMMAND EXAMPLES ═════"
                            echo "ls -> List files in current directory"
                            echo "ls -la -> List everything with details, including hidden files"
                            echo "ls -lh /home/ -> List with readable sizes"
                            echo "ls -R -> List everything recursively"
                            echo "ls -lt -> List everything with details, sorted from bottom to top"
                            echo "ls -lah -> List everything with details, including hidden files in readable sizes"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'ls' menu... "
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

            "cp")
                clear
                show_header
                echo ""
                echo "Command: cp"
                echo "Description: Copies files and directories"
                echo ""

                select option_cp in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_cp in
                        "View command and flags")
                            echo ""
                            echo "═════ CP COMMAND AND ITS FLAGS ═════"
                            echo "cp [option] source path -> new path"
                            echo ""
                            echo "Main Flags:"
                            echo "-r : Copies directories recursively"
                            echo "-i : Asks the user for confirmation before overwriting"
                            echo "-v : Shows which files are being copied"
                            echo "-p : Preserves permissions and timestamps"
                            echo "════════════════════════════════════"
                            read -p "Press enter to return to 'cp' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ CP COMMAND EXAMPLES ═════"
                            echo "cp file.txt copy.txt -> Copy file"
                            echo "cp -r folder/ destination/ -> Copy whole directory"
                            echo "cp -iv *.txt backup/ -> Copy with confirmation and detail"
                            echo "cp -p file.txt /home/user/Project -> Copy keeping same permissions and timestamps"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'cp' menu... "
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

            "rm")
                clear
                show_header
                echo ""
                echo "Command: rm"
                echo "Description: Delete files and directories"
                echo ""

                select option_rm in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_rm in
                        "View command and flags")
                            echo "═════ RM COMMAND AND ITS FLAGS ═════"
                            echo "rm [option] file/directory"
                            echo ""
                            echo "Main Flags:"
                            echo "-r : Deletes directories recursively"
                            echo "-i : Asks for confirmation before deleting"
                            echo "-f : Forces deletion without confirmation"
                            echo "-v : Shows which files are being deleted"
                            echo "════════════════════════════════════"
                            read -p "Press enter to return to 'rm' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ RM COMMAND EXAMPLES ═════"
                            echo "rm file.txt -> Delete file"
                            echo "rm -i *.tmp -> Delete files with confirmation"
                            echo "rm -rf folder/ -> Delete directory and contents without confirmation"
                            echo "rm -v *.tmp -> Delete files showing with detail which files are being deleted"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'rm' menu... "
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

            "find")
                clear
                show_header
                echo ""
                echo "Command: find"
                echo "Description: Search for files and directories"
                echo ""

                select option_find in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_find in
                        "View command and flags")
                            echo ""
                            echo "═════ FIND COMMAND AND ITS FLAGS ═════"
                            echo "find [path] [option] [expression]"
                            echo ""
                            echo "Main Flags:"
                            echo "-name : Search by filename"
                            echo "-type : Search by file type (f=file, d=directory)"
                            echo "-size : Search by file size"
                            echo "-exec : Execute command on found files"
                            echo "══════════════════════════════════════"
                            read -p "Press enter to return to 'find' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ FIND COMMAND EXAMPLES ═════"
                            echo "find . -name '*.txt' -> Find all .txt files in current directory"
                            echo "find /home -type d -name 'Documents' -> Find directories named 'Documents' in home/"
                            echo "find . -size +100M -> Find files larger than 100MB in current directory"
                            echo "find . -name '*.log' exec rm {} \; -> Find and delete .log files"
                            echo "═════════════════════════════════"
                            read -p "Press enter to return to 'find' menu... "
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

            "touch")
                clear
                show_header
                echo ""
                echo "Command: touch"
                echo "Description: Create empty files or update timestamps"
                echo ""

                select option_touch in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_touch in
                        "View command and flags")
                            echo ""
                            echo "═════ TOUCH COMMAND AND ITS FLAGS ═════"
                            echo "touch [option] filename"
                            echo ""
                            echo "Main Flags:"
                            echo "-a : Change only access time"
                            echo "-m : Change only modification time"
                            echo "-c : Do not create file if it doesn't exist"
                            echo "-t : Use specific timestamp"
                            echo "-r : Use timestamp from reference file"
                            echo "═══════════════════════════════════════"
                            read -p "Press enter to return to 'touch' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ TOUCH COMMAND EXAMPLES ═════"
                            echo "touch newfile.txt -> Create empty file"
                            echo "touch file1.txt file2.txt file3.txt -> Create multiple files"
                            echo "touch -c existing.txt -> If existing.txt not exist, this flag avoid to create a file with that name. If existing.txt exists, this will update timestamp without creating it"
                            echo "touch -a file.txt -> Update access time"
                            echo "touch -m file.txt -> Update modification time (Pretty similar to flag -a)"
                            echo "touch -t 202507041230 file.txt -> Set a specific time, this means: 2025-07-04 12:30"
                            echo "touch -r file.txt new_file.txt -> Copies timestamp from file.txt to new_file.txt"
                            echo "══════════════════════════════════"
                            read -p "Press enter to return to 'touch' menu... "
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

            "cd")
                clear
                show_header
                echo ""
                echo "Command: cd"
                echo "Description: Change current directory"
                echo ""

                select option_cd in "View command and options" "View examples" "Return to previous menu"; do
                    case $option_cd in
                        "View command and options")
                            echo ""
                            echo "═════ CD COMMAND AND ITS OPTIONS ═════"
                            echo "cd [directory]"
                            echo ""
                            echo "Main Options:"
                            echo "NOTE: cd does not have flags, It has different options"
                            echo "cd ~ : Go to home directory"
                            echo "cd - : Go to previous directory"
                            echo "cd .. : Go to parent directory"
                            echo "cd / : Go to root directory"
                            echo "cd (no args) : Go to home directory"
                            echo "══════════════════════════════════════"
                            read -p "Press enter to return to 'cd' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ CD COMMAND EXAMPLES ═════"
                            echo "cd /home/user/Documents -> Navigate to specific directory"
                            echo "cd .. -> Go up one level -> /home/user/Documents cd .. /home/user"
                            echo "cd ~ -> Go to home directory -> /home/user/Documents/ID/ cd ~ /home/user"
                            echo "cd - -> Switch to previous directory -> /home/user cd /home/user/Documents cd - /home/user cd - /home/user/Documents"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'cd' menu... "
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

            "cat")
                clear
                show_header
                echo ""
                echo "Command: cat"
                echo "Description: Display file contents"
                echo ""

                select option_cat in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_cat in
                        "View command and flags")
                            echo ""
                            echo "═════ CAT COMMAND AND ITS FLAGS ═════"
                            echo "cat [option] filename"
                            echo ""
                            echo "Main Flags:"
                            echo "-n : Number all output lines"
                            echo "-b : Number non-blank output lines"
                            echo "-s : Suppress repeated empty lines"
                            echo "-A : Show all characters including non-printing"
                            echo "-v : Show non-printing characters"
                            echo "═════════════════════════════════════"
                            read -p "Press enter to return to 'cat' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ CAT COMMAND EXAMPLES ═════"
                            echo "cat file.txt -> Display file content"
                            echo "cat -n file.txt -> Display with line numbers"
                            echo "cat -b file.txt -> Display with non-blank line numbers"
                            echo "cat -s file.txt -> Display without repeated empty lines"
                            echo "cat -A file.txt -> Display all characters, including hidden characters"
                            echo "cat -v file.txt -> Displays character that are not normally print"
                            echo "cat file1.txt file2.txt -> Display multiple files"
                            echo "cat > newfile.txt -> Create file and write content"
                            echo "════════════════════════════════"
                            read -p "Press enter to return to 'cat' menu... "
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

            "less")
                clear
                show_header
                echo ""
                echo "Command: less"
                echo "Description: View file content page by page"
                echo ""

                select option_less in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_less in
                        "View command and flags")
                            echo ""
                            echo "═════ LESS COMMAND AND ITS FLAGS ═════"
                            echo "less [option] file"
                            echo ""
                            echo "Main Flags:"
                            echo "-N : Show line numbers"
                            echo "-S : Chop long lines (don't wrap)"
                            echo "+G : Start at the end of file"
                            echo "══════════════════════════════════════"
                            read -p "Press enter to return to 'less' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ LESS COMMAND EXAMPLES ═════"
                            echo "less file.txt -> View file with pagination"
                            echo "less -N file.txt -> View with line numbers"
                            echo "less -S file.txt -> Don't wrap long lines"
                            echo "less +G file.txt -> Start at the end of file"
                            echo "═════════════════════════════════"
                            read -p "Press enter to return to 'less' menu... "
                            echo ""
                            ;;
                        "Return to previous menu")
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

            "pwd")
                clear
                show_header
                echo ""
                echo "Command: pwd"
                echo "Description: Print working directory (show current location)"
                echo ""

                select option_pwd in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_pwd in
                        "View command and flags")
                            echo ""
                            echo "═════ PWD COMMAND AND ITS FLAGS ═════"
                            echo "pwd [option] "
                            echo ""
                            echo "Main Flags:"
                            echo "NOTE: pwd hardly ever need any flags"
                            echo "-L : Print logical current directory (default)"
                            echo "-P : Print physical current directory (resolve sysmlinks)"
                            echo "═════════════════════════════════════"
                            read -p "Press enter to return to 'pwd' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ PWD COMMAND EXAMPLES ═════"
                            echo "pwd -> Shows current directory path"
                            echo "pwd -L -> Shows physical path (Resolves symlinks)"
                            echo "pwd -P -> Shows logical path (With symlinks)"
                            echo "════════════════════════════════"
                            read -p "Press enter to return to 'pwd' menu... "
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

            "zip")
                clear
                show_header
                echo ""
                echo "Command: zip"
                echo "Description: Create and manage ZIP archives"
                echo ""

                select option_zip in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_zip in
                        "View command and flags")
                            echo ""
                            echo "═════ ZIP COMMAND AND ITS FLAGS ═════"
                            echo "zip [options] archive.zip files"
                            echo ""
                            echo "Main Flags:"
                            echo "-r : Recursively zip directories"
                            echo "-9 : Best compression level"
                            echo "-1 : Fastest compression"
                            echo "-e : Encrypt archive with password"
                            echo "════════════════════════════════════"
                            read -p "Press enter to return to 'zip' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ ZIP COMMAND EXAMPLES ═════"
                            echo "zip archive.zip file1.txt file2.txt -> Create archive with files"
                            echo "zip -r backup.zip directory/ -> Zip entire directory"
                            echo "zip -9 compressed.zip *.txt -> Maximum compression"
                            echo "zip -1 compressed.zip *.txt -> Fastest compression"
                            echo "zip -e secure.zip secrets.txt -> Password protected archive"
                            echo "════════════════════════════════"
                            read -p "Press enter to return to 'zip' menu... "
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

            "tar")
                clear
                show_header
                echo ""
                echo "Command: tar"
                echo "Description: Archive and compress files"
                echo ""

                select option_tar in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_tar in
                        "View command and flags")
                            echo ""
                            echo "═════ TAR COMMAND AND ITS FLAGS ═════"
                            echo "tar [options] archive files"
                            echo ""
                            echo "Main Flags:"
                            echo "-c : Create new archive"
                            echo "-x : Extract from archive"
                            echo "-v : Verbose output"
                            echo "-f : Specific filename"
                            echo "-z : Use gzip compressione (.tar.gz)"
                            echo "═════════════════════════════════════"
                            read -p "Press enter to return to 'tar' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ TAR COMMAND EXAMPLES ═════"
                            echo "tar -cvf archive.tar directory/ -> Create tar archive"
                            echo "tar -czvf archive.tar.gz directory/ -> Create compressed archive"
                            echo "tar -xvf archive.tar -> Extract tar archive"
                            echo "tar -xzvf archive.tar.gz -> Extract compressed archive"
                            echo "════════════════════════════════"
                            read -p "Press enter to return to 'tar' menu... "
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

            "head")
                clear
                show_header
                echo ""
                echo "Command: head"
                echo "Description: Display first lines of a file"
                echo ""

                select option_head in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_head in
                        "View command and flags")
                            echo ""
                            echo "═════ HEAD COMMAND AND ITS FLAGS ═════"
                            echo "head [option] filename"
                            echo ""
                            echo "Main Flags:"
                            echo "-n : Number of lines to show (Default: 10)"
                            echo "-c : Number of bytes to show"
                            echo "══════════════════════════════════════"
                            read -p "Press enter to return to 'head' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ HEAD COMMAND EXAMPLES ═════"
                            echo "head file.txt -> Show first 10 lines"
                            echo "head -n 5 file.txt -> Show first 5 lines"
                            echo "head -c 100 file.txt -> Show first 100 bytes"
                            echo "head -n 20 *.log -> Show first 20 lines of all .log files"
                            echo "═════════════════════════════════"
                            read -p "Press enter to return to 'head' menu... "
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

            "tail")
                clear
                show_header
                echo ""
                echo "Command: tail"
                echo "Description: Display last lines of a file"
                echo ""

                select option_tail in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_tail in
                        "View command and flags")
                            echo ""
                            echo "═════ TAIL COMMAND AND ITS FLAGS ═════"
                            echo "tail [option] filename"
                            echo ""
                            echo "Main Flags:"
                            echo "-n : Number of lines to show (Default: 10)"
                            echo "-c : Number of bytes to show"
                            echo "-f : Follow file changes (live updates)"
                            echo "══════════════════════════════════════"
                            read -p "Press enter to return to 'tail' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ TAIL COMMAND EXAMPLES ═════"
                            echo "tail file.txt -> Show last 10 lines"
                            echo "tail -n 20 file.txt -> Show last 20 lines"
                            echo "tail -f log.txt -> Follow log file in real-time"
                            echo "tail -c 500 file.txt -> Show last 500 bytes"
                            echo "═════════════════════════════════"
                            read -p "Press enter to return to 'tail' menu... "
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

            "mkdir")
                clear
                show_header
                echo ""
                echo "Command: mkdir"
                echo "Description: Create directories"
                echo ""

                select option_mkdir in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_mkdir in
                        "View command and flags")
                            echo ""
                            echo "═════ MKDIR COMMAND AND ITS FLAGS ═════"
                            echo "mkdir [option] directory_name"
                            echo ""
                            echo "Main Flags:"
                            echo "-p : Create parent directories as needed"
                            echo "-v : Verbose mode (Show what's being created)"
                            echo "-m : Set permissions for new directory"
                            echo "═══════════════════════════════════════"
                            read -p "Press enter to return to 'mkdir' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ MKDIR COMMAND EXAMPLES ═════"
                            echo "mkdir new_directory -> Create single directory"
                            echo "mkdir -p main_directory/first_directory/second_directory -> Create nested directories"
                            echo "mkdir -v new_directory1 new_directory2 -> Create multiple directories"
                            echo "mkdir -m 755 new_directory -> Create with specific permissions"
                            echo "NOTE: You can create hidden directories - mkdir .new_directory -> Create a hidden directory, to display it you need to use ls -a to see all hiddens directories or files"
                            echo "══════════════════════════════════"
                            read -p "Press enter to return to 'mkdir' menu... "
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

            "rmdir")
                clear
                show_header
                echo ""
                echo "Command: rmdir"
                echo "Description: Remove empty directories"
                echo ""

                select option_rmdir in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_rmdir in
                        "View command and flags")
                            echo ""
                            echo "═════ RMDIR COMMAND AND ITS FLAGS ═════"
                            echo "rmdir [option] directory_name"
                            echo ""
                            echo "Main Flags:"
                            echo "NOTE: rmdir only works on empty directories"
                            echo "-p : Remove parent directories if the become empty"
                            echo "-v : Verbose mode (show what's being removed)"
                            echo "--ignore-fail-on-non-empty : Ignote failure on non-empty dirs"
                            echo "═══════════════════════════════════════"
                            read -p "Press enter to return to 'rmdir' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ RMDIR COMMAND EXAMPLES ═════"
                            echo "rmdir empty_directory -> Remove empty directory"
                            echo "rmdir -p path/to/empty/directory -> Remove nested empty directories"
                            echo "rmdir -v directory1 directory2 -> Remove multiple directories"
                            echo "══════════════════════════════════"
                            echo "Alternative for non-empty directories:"
                            echo "rm -r directory -> Remove directory and all contents (You can also use rm -rf)"
                            echo "══════════════════════════════════"
                            read -p "Press enter to return to 'rmdir' menu... "
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

            "file")
                clear
                show_header
                echo ""
                echo "Command: file"
                echo "Description: Determine file type"
                echo ""

                select option_file in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_file in
                        "View command and flags")
                            echo ""
                            echo "═════ FILE COMMAND AND ITS FLAGS ═════"
                            echo "file [option] filename"
                            echo ""
                            echo "Main Flags:"
                            echo "-b : Brief mode (don't show filename)"
                            echo "-i : Show MIME type"
                            echo "-z : Try to look inside compressed files"
                            echo "══════════════════════════════════════"
                            read -p "Press enter to return to 'file' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ FILE COMMAND EXAMPLES ═════"
                            echo "file document.pdf -> Shows file type information"
                            echo "file -b image.jpg -> Brief output without filename"
                            echo "file -i script.sh -> Shows MIME type"
                            echo "file -z script.sh.gz -> Shows what type of file is compressed inside (looks through compression)"
                            echo "═════════════════════════════════"
                            read -p "Press enter to return to 'file' menu... "
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

            "wc")
                clear
                show_header
                echo ""
                echo "Command: wc"
                echo "Description: Count lines, words and characters in files"
                echo ""

                select option_wc in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_wc in
                        "View command and flags")
                            echo ""
                            echo "═════ WC COMMAND AND ITS FLAGS ═════"
                            echo "wc [option] filename"
                            echo ""
                            echo "Main Flags:"
                            echo "-l : Count lines only"
                            echo "-w : Count words only"
                            echo "-c : Count bytes only"
                            echo "-m : Count characters only"
                            echo "-L : Show length of longest line"
                            echo "════════════════════════════════════"
                            read -p "Press enter to return to 'wc' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ WC COMMAND EXAMPLES ═════"
                            echo "wc file.txt -> Show lines, words and bytes"
                            echo "wc -l file.txt -> Count lines only"
                            echo "wc -w file.txt -> Count words only"
                            echo "wc -c file.txt -> Count bytes only"
                            echo "wc -m file.txt -> Count characters only"
                            echo "wc *.txt -> Count stats for all .txt files"
                            echo "wc -l *.txt -> Count lines in all .txt files"
                            echo "cat file.txt | wc -l -> Count lines from pipe input"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'wc' menu... "
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
                echo "Invalid option. Please try again"
                ;;
        esac
    done
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    source ./command_helper.sh
    show_main_menu
fi
