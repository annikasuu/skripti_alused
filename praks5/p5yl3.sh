#!/bin/bash
#Tingimuslaused.
#Kasutaja tervitamine vastavalt sisestatud täistunnile.

echo -e "Sisesta praegune täistund: \c"
read aeg

if (( 6 <= $aeg && $aeg <= 12 )); then
 echo "Tere hommikust!"
#Järgnev käsurida ei tööta, kui kasutada kaarsulu asemel ühte kantsulgu.
#Üks võimalus, kuidas vahemikku kuuluvust kontrollida.
elif (( 12 <= $aeg && $aeg <= 18 )); then
  echo "Tere päevast!"
#Järgnev käsurida ei tööta, kui kasutada kantsulu asemel kahte kaarsulgu.
#Teine võimalus, kuidas vahemikku kuuluvust konrollida.
elif [ $aeg -ge 18 -a $aeg -le 22 ]; then
  echo "Tere õhtust!"
elif [ $aeg -ge 22 -a $aeg -le 24 ] || [ $aeg -ge 0 -a $aeg -lt 6 ]; then
  echo "Head ööd!"
else
 echo "Sellist kellaaega ei ole."
fi

#Tingimuskontrolli lõpp.

