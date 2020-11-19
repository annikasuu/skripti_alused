#!/bin/bash
#Skript laseb sisestada reisijate arvu grupis ning kohtade arvu bussis.
#Tulemusena väljastatakse täielikult täidetud busside arv ning mitu inimest on üle.

echo -n  "Mitu reisijat on grupis: "
read reisijaid
echo -n "Kohtade arv bussis: "
read bussi_suurus
echo -n "Vajalike busside arv: "
expr $reisijaid / $bussi_suurus

#Üle jäävate inimeste arvutamine.
echo -n "Üle on selline arv inimesi: "
expr $reisijaid % $bussi_suurus
