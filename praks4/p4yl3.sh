#!/bin/bash
#Ülesande lahenduses kasutatakse sisseehitatud if lauset.
#Antud lause omapära on, et see nagu “ehitatakse” teise tingimuslause sisse.
#Selleks, et visuaalselt oleks parem - sisemine tingimuslause nihutatakse paremale nt TAB-ga. 

osch=0
echo "1. Unix (Sun Os)"
echo "2. Linux (Red Hat)"
echo -n "Select your os choice [1 or 2]? "
read osch
if [ $osch -eq 1 ] ; then
     echo "You Pick up Unix (Sun Os)"
else #### nested if i.e. if within if ######
       if [ $osch -eq 2 ] ; then
             echo "You Pick up Linux (Red Hat)"
       else
             echo "What you don't like Unix/Linux OS."
       fi
fi
#
