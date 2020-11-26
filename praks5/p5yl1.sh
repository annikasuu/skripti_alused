#!/bin/bash
#Tingimuslaused.
#Suurusvahemikud.
#Skript küsib kasutaja vanust ning vastavalt vanusele ütleb, kellega on tegu.
#Kui ei sisestata positiivset arvu, siis antakse veateade.

echo -n "Sisesta vanus: "
read vanus

if (( 0 <= $vanus && $vanus <= 11 )); then
  echo "Oled laps."
elif (( 11 <= $vanus && $vanus <= 18 )); then
  echo "Oled nooruk."
elif (( 18 <= $vanus && $vanus <= 63 )); then
  echo "Oled täiskasvanu."
elif (( $vanus > 63 )); then
  echo "Oled seenior."
else
  echo "Viga vanuse sisestamisel."
fi


#Saab ka alljärgenalt teha:
#Probleemiks võiks olla tingimuse koostamine – tuleb määrata, et vanus on näiteks
#suurem kui 0 ja samal ajal väiksem kui 11 – selleks tuleb kasutada kahe tingimuse
#ühendamist: $vanus -gt 0 -a $vanus -lt 11 , siin -a võti tähendab JA ehk AND.
#Juhul, kui on soovi kasutada tingimuste ühendamiseks VÕI, siis selle analoog on OR
#ja võti, mis tuleb kasutada on -o.
