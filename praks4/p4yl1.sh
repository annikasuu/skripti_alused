#!/bin/bash
#Tingimuslaused.
#Skript, mis küsib kasutaja käest ühe täisarvu.
#Skript väljastab seletava kirjelduse, kas antud arv on paaris või mitte.

echo -n "Sisesta suvaline täisarv: "
read arv
#Kontrollimaks, kas tegemist on täisarvuga, jagame kasutaja sisestatud arvu 2-ga.
#Arvutame jäägi 2-ga jagamisel.
jaak=$(($arv % 2))
#4 % 2 => 0 -> siis arv on paaris
#5 % 2 => 1 -> siis arv on paaritu

if [ $jaak -eq 0 ]
then
  echo "Arv $arv on paaris."
else
   echo "Arv $arv on paaritu."
fi
#Tingimuskontroll on lõppenud. 
 
