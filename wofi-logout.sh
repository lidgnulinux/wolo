#!/usr/bin/bash
menu=" Shutdown\n Restart\n Logout\n Cancel"

selected=$(echo -e $menu | wofi -W 10% --dmenu --line 4 --cache-file /dev/null -p "Wofi Logout" | awk '{print tolower ($2)}')

case $selected in
   shutdown)
      exec confirm1.sh;;
   restart)
      exec confirm2.sh;;
   logout)
      exec confirm3.sh;;
   cancel)
      exec killall wofi;;
esac
