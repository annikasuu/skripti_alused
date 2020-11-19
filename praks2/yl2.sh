#!/bin/bash

#See skript väljastab kuupäeva ja ajaga seotud info.
# -n teeb nii, et sisendi küsimise lause ning sisestatav info kuvatakse terminalis ühel real. 

echo -n "Today is "
#date --rfc-2822
date +"%A, %B %d, %Y."
echo -n "Time is "
date +"%H:%M."
echo " "
cal

#echo -n "Sisesta oma kasutajanimi: "
#read kasutajanimi
#echo "Tere, $kasutajanimi "
#echo "!"
