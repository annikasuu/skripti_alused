#!/bin/bash
#See skript arvutab ühe nädala eeldatavat õppetööks kuluvat aega.


echo -n "Sisestage ainepunktide arv: "
read ainepunktid
echo -n "Sisestage nädalate arv: "
read nadalad
var1=$((ainepunktid / nadalad))

#Tulemuse ümardamine täisarvuni, s.t ülespoole. Täisarvuks teisendamine ei sobi, sest nt täisarvuks
#teisendatud 7,8 annab tulemuseks 7. 
aeg=`echo "scale=1;$ainepunktid/$nadalad" | bc`
aeg_ymarda="`echo "($aeg+0.9)/1" | bc`"
echo -n "Eeldatav õppetööks kuluv (täis)tundide arv nädalas: "
echo $aeg_ymarda
