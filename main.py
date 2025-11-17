import curses

def main(stdscr):
    # Cursor ausblenden (optional)
    curses.curs_set(0)

    # Bildschirm löschen
    stdscr.clear()

    # Text ausgeben
    stdscr.addstr(0, 0, "Hallo Welt mit curses! Drücke 'q' zum Beenden.")

    # Anzeige aktualisieren
    stdscr.refresh()

    # Auf Tastendruck warten, bis 'q' gedrückt wird
    while True:
        ch = stdscr.getch()
        if ch in (ord('q'), ord('Q')):
            break

if __name__ == "__main__":
    curses.wrapper(main)
