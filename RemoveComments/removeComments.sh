if [ -z "$1" ]; then
  echo "Bitte geben Sie eine Datei an."
  exit 1
fi
if [ ! -f "$1" ]; then
  echo "Die Datei $1 existiert nicht."
  exit 1
fi
if [[ "$1" == *.sh ]]; then
  sed -i '' -e '/^\s*#/d' -e '/^[[:space:]]*$/d' "$1"
elif [[ "$1" == *.js ]]; then
  sed -i '' -e '/^\s*\/\/.*$/d' -e '/^[[:space:]]*$/d' "$1"
else
  echo "Kommentare können nur aus .sh- oder .js-Dateien entfernt werden."
  exit 1
fi
echo "Kommentare und leere Zeilen wurden aus der Datei $1 entfernt."
