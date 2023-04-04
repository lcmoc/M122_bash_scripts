#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage: $0 <directory>"
  echo "Dieses Script listed ab einem Verzeichnis rekursiv die summe des Speicherbedarfs auf."
  echo "Sodann noch die drei groesten Dateien."
  echo ""
  echo "Sie muessen beim Aufruf des Scripts $0 den Namen des geünschten Verzeichnis mitgeben."
  exit 1
fi

if [ ! -d "$1" ]; then
  echo "Fehler: Das Verzeichnis '$1' existiert nicht"
  exit 1
fi

total_size=$(find "$1" -type f -print0 | xargs -0 stat -f "%z" | awk '{sum+=$1} END {print sum}')

echo "Gesamtgröße: $(echo $total_size | awk '{ split( "B KB MB GB TB" , v ); s=1; while( $1>=1024 ){ $1/=1024; s++ } printf "%.2f %s\n", $1, v[s] }')"

echo ""

largest_files=$(find "$1" -type f -exec ls -lh {} + | awk '{print $5, $9}' | sort -hr | head -n 3 | awk '{print NR ". " $2 " (" $1 ")"}')
echo "Die drei größten Dateien sind:"

echo ""

echo "$largest_files"

echo ""

read -p "Möchten Sie die Größe der Dateien verkleinern? (Ja/Nein) " choice
echo""
case "$choice" in 
  j|J|ja|Ja|JA )
    echo "Entferne Kommentare und Leerzeichen aus den Dateien..."
    echo""
    for file in $(echo "$largest_files" | awk '{print $2}'); do
      if [ -f "$file" ]; then
        if [[ "$file" == *.sh ]]; then
          sed -i '' -e '/^\s*#/d' -e '/^[[:space:]]*$/d' "$file"
        elif [[ "$file" == *.js ]]; then
          sed -i '' -e '/^\s*\/\/.*$/d' -e '/^[[:space:]]*$/d' "$file"
        else
          echo "Kommentare können nur aus .sh- oder .js-Dateien entfernt werden."
          exit 1
        fi
        new_size=$(stat -f "%z" "$file")
        echo "Neue Größe von '$file': $(numfmt --to=iec-i --suffix=B $new_size)"
      else
        echo "Fehler: Die Datei '$file' existiert nicht"
      fi
    done
    ;;
  n|N|nein|Nein|NEIN )
    echo "Die Größe der Dateien wird nicht verkleinert."
    ;;
  * )
    echo "Ungültige Antwort. Die Größe der Dateien wird nicht verkleinert."
    ;;
esac
