#!/bin/bash
#Tingimuslaused.
#Kasutaja tervitamine vastavalt sisestatud täistunnile.

#Ksutaja nime küsimine ja tervitamine nimepidi. 
echo -n "Sisesta oma nimi: "
read nimi 


#Järgnev osa küsib tundi ja vastavalt sellele tervitab.
#Järgnev väljastab aja kujul HH:MM - date +"%H:%M.".


#Siin on pooleli ja valesti, kopeeritud alusena teisest failist.
if (( 6 <= $aeg && $aeg <= 12 )); then
 echo "Tere hommikust, $nimi!"
#Järgnev käsurida ei tööta, kui kasutada kaarsulu asemel ühte kantsulgu.
#Üks võimalus, kuidas vahemikku kuuluvust kontrollida.
elif (( 12 <= date +"%H" && date +"%H" <= 18 )); then
  echo "Tere päevast, $nimi!"
#Järgnev käsurida ei tööta, kui kasutada kantsulu asemel kahte kaarsulgu.
#Teine võimalus, kuidas vahemikku kuuluvust konrollida.
elif [ $aeg -ge 18 -a $aeg -le 22 ]; then
  echo "Tere õhtust, $nimi!"
elif [ $aeg -ge 22 -a $aeg -le 24 ] || [ $aeg -ge 0 -a $aeg -lt 6 ]; then
  echo "Head ööd, $nimi!"
else
 echo "Sellist kellaaega ei ole."
fi

#Tingimuskontrolli lõpp.

