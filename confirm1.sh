#!/usr/bin/bash
pilih="Yes\nNo\nBack"

selected=$(echo -e $pilih | wofi -W 10% --dmenu --line 3 --cache-file /dev/null -p "Shutdown ?" | awk '{print tolower ($1)}')

case $selected in
   yes)
      exec systemctl poweroff;;
   no)
      exec killall wofi;;
   back)
      exec wofi-logout.sh;;
esac

