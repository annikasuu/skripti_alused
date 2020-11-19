#!/bin/bash
#Skript laseb sisestada reisijate arvu grupis ning kohtade arvu bussis.
#Tulemusena väljastatakse täielikult täidetud busside arv ning mitu inimest on üle.
#Kui reisijad ei mahu täisbusside sisse, siis suurendatakse busside arv ühe võrra.

#Sisendi küsimine.
echo -n  "Sisesta reisijate arv: "
read reisijaid
echo -n "Sisesta kohtade arv bussis: "
read bussi_suurus

#Arvutame, mitu bussi vaja on. 
bussid=$(( $reisijaid / $bussi_suurus))

#Üle jäävate inimeste arvutamine.
ylejaanud=$(( $reisijaid % $bussi_suurus))

#Kui on ülejäävaid reisijaid, siis tuleb suurendada busside arvu 1 võrra.
#Tingimuse seadmine.
if test $ylejaanud -gt 0
then
   #Muutuja "bussid" vajab üledefineerimist, seega ümbersalvestamiseks ei kasuta $ märki
   #aga arvutamisel juba kasutame.
   bussid=$(($bussid +1))
fi

#Tulemuse välajstamine lauses.
echo "Kokku on vaja $bussid bussi."
