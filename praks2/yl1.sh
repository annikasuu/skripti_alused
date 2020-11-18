#!/bin/bash

#See skript on kasutaja tervitamiseks. Kasutaja sisestab ise oma nime.
# -n teeb nii, et Sisendi küsimise lause ning sisestatav info kuvatakse terminalis ühel real. 
echo -n "Sisesta oma kasutajanimi: "
read kasutajanimi
echo "Tere, $kasutajanimi "
echo "!"
