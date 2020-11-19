#!/bin/bash
#See skript paneb sisendi eri osad kokku üheks tervikuks.

#Pane tähele, et number ei ole jutumärkide vahel ja tekst on. Backtick-ga (`) antud juhul ei tööta.
#Jutumärgid muudavad teksti sõne-ks.

aasta=2016
president="Kersti Kaljulaid."
lause_keskosa=". aastal valiti Eesti presidendiks "
lause="$aasta $lause_keskosa $president"
echo "$lause"

