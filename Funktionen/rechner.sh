#!/bin/bash

rechnen() {
    operation=$1
    zahl1=$2
    zahl2=$3
    case $operation in
        +)
            echo $((zahl1 + zahl2))
            ;;
        -)
            echo $((zahl1 - zahl2))
            ;;
        \x)
            echo $((zahl1 * zahl2))
            ;;
        /)
            echo $(bc -l <<< "scale=2; $zahl1 / $zahl2")
            ;;
        *)
            echo "Ungültige Operation!"
            exit 1
            ;;
    esac
}

read -p "Gib die erste Zahl ein: " zahl1
read -p "Gib die zweite Zahl ein: " zahl2
read -p "Welche Operation möchtest du durchführen (+, -, x, /)? " operation

ergebnis=$(rechnen $operation $zahl1 $zahl2)

echo "$zahl1 $operation $zahl2 = $ergebnis"
