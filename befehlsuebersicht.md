# Befehlsübersicht

## Allgemein

### Navigation
- `cd` - Wechselt in ein anderes Verzeichnis.
- `ls` - Listet den Inhalt des aktuellen Verzeichnisses auf.
- `pwd` - Zeigt das aktuelle Arbeitsverzeichnis an.
- `tree` - Zeigt die Ordnerstruktur des aktuellen Verzeichnisses an.

### Dateiverwaltung
- `touch` - Erstellt eine neue leere Datei oder aktualisiert das Änderungsdatum einer vorhandenen Datei.
- `mkdir` - Erstellt ein neues Verzeichnis.
- `rm` - Löscht eine Datei oder ein Verzeichnis.
- `cp` - Kopiert eine Datei oder ein Verzeichnis.
- `mv` - Verschiebt oder benennt eine Datei oder ein Verzeichnis um.
- `cat` - Zeigt den Inhalt einer Datei an.
- `nano` - Öffnet eine Textdatei zum Bearbeiten.

### Systeminformationen
- `uname` - Zeigt Informationen zum Betriebssystem an.
- `df` - Zeigt die Speichernutzung des Dateisystems an.
- `top` - Zeigt die aktuell laufenden Prozesse an.
- `free` - Zeigt den verfügbaren Arbeitsspeicher an.
- `htop` - Zeigt die Systemauslastung in Echtzeit an.
- `ifconfig` - Zeigt Informationen zur Netzwerkverbindung an.
- `lscpu` - Zeigt Informationen zur CPU an.
- `lshw` - Zeigt detaillierte Hardware-Informationen an.
- `lsusb` - Zeigt angeschlossene USB-Geräte an.
- `lspci` - Zeigt Informationen zur PCI-Hardware an.
- `fdisk` - Zeigt Informationen zu Festplattenpartitionen an.

### Archivierung
- `tar` - Archiviert und entpackt Dateien und Verzeichnisse.
- `gzip` - Komprimiert Dateien.
- `gunzip` - Entpackt komprimierte Dateien.

### Netzwerk
- `ping` - Überprüft die Netzwerkverbindung.
- `traceroute` - Zeigt den Weg von einem Netzwerkpaket durch das Internet an.
- `ssh` - Verbindet sich zu einem Remote-Server über SSH.
- `scp` - Kopiert Dateien zwischen einem lokalen und einem Remote-Server über SSH.
- `sftp` - Überträgt Dateien über eine sichere Verbindung mit SFTP.
- `curl` - Lädt Dateien von einer URL herunter.
- `netstat` - Zeigt Netzwerkverbindungen, Routing-Tabellen und Schnittstellenstatistiken an.
- `nmap` - Scant Netzwerke und zeigt offene Ports und verfügbare Dienste an.
- `ip` - Zeigt und konfiguriert Netzwerkgeräte und -verbindungen.
- `route` - Zeigt Routing-Informationen an.
- `ss` - Zeigt detaillierte Informationen zu Netzwerkverbindungen an.

### Benutzerverwaltung
- `sudo` - Führt einen Befehl als Superuser aus.
- `adduser` - Fügt einen neuen Benutzer hinzu.
- `usermod` - Modifiziert die Eigenschaften eines Benutzers.
- `passwd` - Ändert das Passwort eines Benutzers.

### Prozessverwaltung
- `ps` - Zeigt Informationen über aktive Prozesse an.
- `kill` - Beendet einen Prozess.
- `killall` - Beendet alle Prozesse mit dem angegebenen Namen.
- `pgrep` - Sucht nach Prozessen anhand des Namens und gibt die Prozess-IDs zurück.

### Paketverwaltung
- `apt-get` - Installiert und aktualisiert Pakete unter Debian und Ubuntu.
- `yum` - Installiert und aktualisiert Pakete unter CentOS und Fedora.
- `pacman` - Installiert und aktualisiert Pakete unter Arch Linux.

### Systemadministration
- `systemctl` - Startet, stoppt und verwaltet Systemdienste.
- `journalctl` - Zeigt Systemprotokolle an.

### Sicherheit

- `passwd` - Ändert das Passwort eines Benutzers.
- `chown` - Ändert den Besitzer von Dateien und Verzeichnissen.
- `chmod` - Ändert die Zugriffsrechte von Dateien und Verzeichnissen.
- `sudoers` - Konfiguriert die Zugriffsrechte für das sudo-Kommando.

### Datenbanken

- `mysql` - Startet den MySQL-Client.
- `mysqldump` - Erstellt ein Backup von MySQL-Datenbanken.
- `sqlite3` - Startet den SQLite-Client.
- `mongo` - Startet den MongoDB-Client.

### Programmierung

- `git` - Verwaltet Versionskontrollsysteme für Softwareprojekte.
- `gcc` - Kompiliert C-Programme.
- `make` - Automatisiert den Kompilierungsprozess von C-Programmen.
- `python` - Startet den Python-Interpreter.
- `pip` - Verwaltet Python-Pakete und -Abhängigkeiten.
- `npm` - Verwaltet JavaScript-Pakete und -Abhängigkeiten.

### Sonstiges

- `date` - Zeigt das aktuelle Datum und die aktuelle Uhrzeit an.
- `cal` - Zeigt den Kalender des aktuellen Monats an.
- `grep` - Sucht nach einem bestimmten Muster in einer Datei oder einem Stream.
- `awk` - Verarbeitet und manipuliert Textdateien und Streams.
- `sed` - Verarbeitet und manipuliert Textdateien und Streams.
- `curl` - Lädt Dateien von einer URL herunter.

## Befehele der Dokumentation
- `while`: - Der while-Befehl wird verwendet, um eine Schleife zu erstellen, die wiederholt ausgeführt wird, solange eine bestimmte Bedingung erfüllt ist.
- `do`: - Der do-Befehl wird in Verbindung mit dem while-Befehl verwendet und gibt an, welche Aktionen innerhalb der Schleife ausgeführt werden sollen.
- `if`: - Der if-Befehl wird verwendet, um eine Bedingung zu testen und abhängig vom Ergebnis verschiedene Aktionen auszuführen.
- `=~`: - Der =~-Befehl wird verwendet, um eine reguläre Ausdruck Übereinstimmung in einer Bedingung zu testen.
- `read`: - Der read-Befehl wird verwendet, um Benutzereingaben in eine Variable zu speichern.
- `continue`: - Der continue-Befehl wird innerhalb einer Schleife verwendet, um die aktuelle Iteration zu beenden und zur nächsten Iteration fortzufahren.
- `echo`: - Der echo-Befehl wird verwendet, um Text auf dem Bildschirm auszugeben.
- `then`: - Der then-Befehl wird in Verbindung mit dem if-Befehl verwendet und gibt an, welche Aktionen ausgeführt werden sollen, wenn die Bedingung wahr ist.
- `fi`: - Der fi-Befehl beendet einen if-Block.
- `break`: - Der break-Befehl wird innerhalb einer Schleife verwendet, um die Schleife vorzeitig zu beenden.
- `^[0-9]+$`: - Dies ist ein regulärer Ausdruck, der auf eine Zeichenkette passt, die nur aus Ziffern besteht.
- `RANDOM`: - Die Variable RANDOM enthält eine zufällige Ganzzahl.
- `%`: - Der Modulo-Operator % wird verwendet, um den Rest einer Division zu berechnen.
- `+`: - Der Plus-Operator + wird verwendet, um zwei Zahlen zu addieren.
- `-lt`: - Der Vergleichsoperator -lt wird verwendet, um zu testen, ob eine Zahl kleiner als eine andere Zahl ist.
- `-gt`: - Der Vergleichsoperator -gt wird verwendet, um zu testen, ob eine Zahl größer als eine andere Zahl ist.
- `ls`: Listet den Inhalt eines Verzeichnisses auf.
- `rmdir`: Entfernt ein leeres Verzeichnis.
- `>`: Lenkt die Standardausgabe um und schreibt sie in eine Datei.
- `2>`: Lenkt die Standardfehlerausgabe um und schreibt sie in eine Datei.
- `grep`: Sucht nach einer bestimmten Zeichenkette oder einem regulären Ausdruck in einer Datei oder dem Ausgabestrom einer anderen Anwendung.
- `awk`: Eine textorientierte Programmiersprache, die zum Verarbeiten und Analysieren von Textdateien verwendet wird.
- `sed`: Ein Texteditor, der häufig zum Bearbeiten von Textdateien in Skripten oder in der Kommandozeile verwendet wird.
- `cat`: Ein Befehl, der verwendet wird, um den Inhalt von Dateien anzuzeigen oder zu kombinieren.
- `du`: Gibt die Größe von Dateien und Verzeichnissen auf der Festplatte aus.
- `--apparent-size`: Gibt die scheinbare Größe einer Datei aus.
- `-s`: Gibt die Gesamtgröße eines Verzeichnisses an.
- `-h`: Gibt die Größenangabe in einer für Menschen lesbaren Form aus.
