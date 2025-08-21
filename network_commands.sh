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
                echo "Command: ping"
                echo "Description: Send ICMP echo requests to network hosts"
                echo ""

                select option_ping in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_ping in
                        "View command and flags")
                            echo ""
                            echo "═════ PING COMMAND AND ITS FLAGS ═════"
                            echo "ping [options] destination"
                            echo ""
                            echo "Main Flags:"
                            echo "-c : Number of packets to send"
                            echo "-i : Interval between packets in seconds"
                            echo "-t : Set TTL (Time To Live)"
                            echo "-s : Packet size in bytes"
                            echo "-W : Timeout for response in seconds"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'ping' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ PING COMMAND EXAMPLES ═════"
                            echo "ping google.com -> Ping Google continuously"
                            echo "ping -c 4 google.com -> Send only 4 packets"
                            echo "ping -c 3 -i 2 192.168.1.1 -> Send 3 packets with 2 second intervals"
                            echo "ping -s 1000 google.com -> Send packets of 1000 bytes"
                            echo "ping -W 5 192.168.1.1 -> Wait 5 seconds for response"
                            echo "ping -t 64 google.com -> Set TTL to 64"
                            echo "══════════════════════════"
                            read -p "Press enter to return to 'ping' menu... "
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

            "wget")
                clear
                show_header
                echo ""
                echo "Command: wget"
                echo "Description: Download files from web servers"
                echo ""

                select option_wget in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_wget in
                        "View command and flags")
                            echo ""
                            echo "═════ WGET COMMAND AND ITS FLAGS ═════"
                            echo "wget [options] URL"
                            echo ""
                            echo "Main Flags:"
                            echo "-O : Save with specific filename"
                            echo "-P : Save to specific directory"
                            echo "-c : Continue partial download"
                            echo "-r : Download recursively"
                            echo "-np : No parent directories when recursive"
                            echo "-q : Quiet mode (no output)"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'wget' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ WGET COMMAND EXAMPLES ═════"
                            echo "wget https://example.com/file.zip -> Download file"
                            echo "wget -O custom_name.zip https://example.com/file.zip -> Save with custom name"
                            echo "wget -P /downloads/ https://example.com/file.zip -> Save to specific directory"
                            echo "wget -c https://example.com/largefile.zip -> Resume interrupted download"
                            echo "wget -r -np https://example.com/docs/ -> Download entire website directory"
                            echo "wget -q https://example.com/file.zip -> Download quietly"
                            echo "══════════════════════════"
                            read -p "Press enter to return to 'wget' menu... "
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

            "curl")
                clear
                show_header
                echo ""
                echo "Command: curl"
                echo "Description: Transfer data from or to servers"
                echo ""

                select option_curl in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_curl in
                        "View command and flags")
                            echo ""
                            echo "═════ CURL COMMAND AND ITS FLAGS ═════"
                            echo "curl [options] URL"
                            echo ""
                            echo "Main Flags:"
                            echo "-o : Save output to file"
                            echo "-O : Save with remote filename"
                            echo "-L : Follow redirects"
                            echo "-X : Specify HTTP method (GET, POST, etc.)"
                            echo "-H : Add custom header"
                            echo "-d : Send data with POST request"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'curl' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ CURL COMMAND EXAMPLES ═════"
                            echo "curl https://api.example.com -> Display response content"
                            echo "curl -o page.html https://example.com -> Save to specific file"
                            echo "curl -O https://example.com/file.zip -> Save with original filename"
                            echo "curl -L https://short.url/redirect -> Follow redirects"
                            echo "curl -X POST -d 'data=value' https://api.example.com -> Send POST request"
                            echo "curl -H 'Authorization: Bearer token' https://api.example.com -> Add custom header"
                            echo "══════════════════════════"
                            read -p "Press enter to return to 'curl' menu... "
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

            "ssh")
                clear
                show_header
                echo ""
                echo "Command: ssh"
                echo "Description: Secure Shell - connect to remote servers"
                echo ""

                select option_ssh in "View command and flags" "View examples" "Return to previous menu"; do
                    case $option_ssh in
                        "View command and flags")
                            echo ""
                            echo "═════ SSH COMMAND AND ITS FLAGS ═════"
                            echo "ssh [options] user@hostname"
                            echo ""
                            echo "Main Flags:"
                            echo "-p : Specify port number"
                            echo "-i : Use specific private key file"
                            echo "-L : Local port forwarding"
                            echo "-R : Remote port forwarding"
                            echo "-X : Enable X11 forwarding"
                            echo "-v : Verbose mode for debugging"
                            echo "═══════════════════════════════"
                            read -p "Press enter to return to 'ssh' menu... "
                            echo ""
                            ;;
                        "View examples")
                            echo ""
                            echo "═════ SSH COMMAND EXAMPLES ═════"
                            echo "ssh user@192.168.1.100 -> Connect to remote server"
                            echo "ssh -p 2222 user@server.com -> Connect using specific port"
                            echo "ssh -i ~/.ssh/mykey.pem user@server.com -> Use specific private key"
                            echo "ssh -L 8080:localhost:80 user@server.com -> Local port forwarding"
                            echo "ssh -X user@server.com -> Enable X11 forwarding for GUI apps"
                            echo "ssh -v user@server.com -> Verbose output for troubleshooting"
                            echo "══════════════════════════"
                            read -p "Press enter to return to 'ssh' menu... "
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
