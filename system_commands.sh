show_system_commands() {
clear
echo "╔════════════════════════════════╗"
echo "║       System Commands          ║"
echo "║                                ║"
echo "║  Monitor processes, users      ║"
echo "║  and system information        ║"
echo "╚════════════════════════════════╝"

local system_commands=("clear" "echo" "man" "sudo" "grep" "uname" "whoami" "chmod" "chown" "which" "history" "ps" "ps aux" "kill" "killall" "df" "du" "nano" "vim" "nvim" "date" "uptime" "free" "lscpu" "w" "Back to main menu")

select option in "${system_commands[@]}"; do
    case $option in
        "clear")
            ;;
        "echo")
            ;;
        "man")
            ;;
        "Back to main menu")
            break
            ;;
        *)
            "Invalid option. Please try again"
    esac
done
}
