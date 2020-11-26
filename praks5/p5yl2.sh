#!/bin/bash
#Tingimuslaused.
#Kasutaja sisestab kalendrikuu numbri ja saab vastuseks, mis aastaajaga on tegemist.

echo -n "Sisesta kuu number: "
read kuu

if [ $kuu -eq 1 -o $kuu -eq 2 -o $kuu -eq 12 ]; then
 echo "Praegu on talv."
#Järgnev käsurida ei tööta, kui kasutada ka kaarsulu asemel ühte kantsulgu.
#Üks võimalus, kuidas vahemikku kuuluvust kontrollida.
elif (( 3 <= $kuu && $kuu <= 5 )); then 
  echo "Praegu on kevad."
#Järgnev käsurida ei tööta, kui kasutada kantsulu asemel kahte kaarsulgu.
#Teine võimalus, kuidas vahemikku kuuluvust konrollida.
elif [ $kuu -ge 6 -a $kuu -le 8 ]; then
  echo "Praegu on suvi."
elif [ $kuu -ge 9 -a $kuu -le 11  ]; then
  echo "Praegu on sügis."
else
 echo "Sellist kuud ei ole."
fi

#Tingimuskontrolli lõpp.
