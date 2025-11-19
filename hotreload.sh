# sudo apt install inotify-tools
# pacman -S mingw-w64-x86_64-fswatch



while inotifywait -q -e close_write test.py; do
    clear
    echo "=== Starte neu: $(date) ==="
    python3 test.py
    echo
    echo "=== Programm beendet, warte auf nächste Änderung... ==="
done



#### Mit fswatch ####
#!/bin/bash

#clear
#echo "Watching test.py..."

#fswatch -o test.py | while read num; do
#    clear
#    echo "=== Neustart um $(date) ==="
#    python test.py
#    echo
#    echo "=== Warten auf nächste Änderung... ==="
#done



### update für windows: ###
#fswatch --monitor=poll_monitor -o test.py | while read; do
#    clear
#    python test.py
#done