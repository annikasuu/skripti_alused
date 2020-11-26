#!/bin/bash
#Tingimuslaused.
#Skript, mille käivitamisel peab kasutaja sisestama täisarvu.
#Seepeale antakse vastus, kas antud arv on paaris või mitte.
#Kui algselt arvu ei sisstata, siis annab skript seletava teate.

echo
if [ $# -eq 0 ]; then
echo "Palun sisesta suvaline täisarv." 
else
#Kontrollimaks, kas tegemist on täisarvuga, jagame kasutaja sisestatud arvu 2-ga.
#Arvutame jäägi 2-ga jagamisel. $1 tähistab sisestatud muutujat.
jaak=$(($1 % 2))
#Linux jagab sisestatud arvu mitu korda, kuni lõpuks kas saab jäägi või ei.
#4 % 2 => 0 -> siis arv on paaris
#5 % 2 => 1 -> siis arv on paaritu

  if [ $jaak -eq 0 ]; then
   echo "Antud arv on paaris."
  else
   echo "Antud arv on paaritu."
  fi
fi
#Tingimuskontroll on lõppenud.
