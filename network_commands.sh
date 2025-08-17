show_network_commands() {
clear
echo "╔════════════════════════════════╗"
echo "║       Network Commands         ║"
echo "║                                ║"
echo "║   Connect, download and        ║"
echo "║   test network connectivity    ║"
echo "╚════════════════════════════════╝"

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
            break
            ;;
        *)
            echo "Invalid option. Please try again"
            ;;
    esac
done
}
