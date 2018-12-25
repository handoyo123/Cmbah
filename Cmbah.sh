#!/bin/sh
#warna
ab='\033[1;30m'  #abu abu
lb='\033[1;34m'  #light blue
lr='\033[1;31m'  #light red
dg='\033[1;30m'  #dark grey
lg='\033[1;92m'  #light green
lc='\033[1;36m'  #light cyan
y='\033[1;93m'   #yellow
r='\033[0;31m'   #red
brw='\033[0;33m' #brown
w='\033[1;0m'    #White
cd .module
sh tunggu.sh
ulang = 'y'
while $ulang;
do
  clear
  sh banner.sh
  echo $lc'Pilih Salah Satu Yang Ingin Anda Tuyul\n'
  sleep 0.1
  echo $lb'['$lg'1'$lb']'$brw' Nuyul DogeClickBot'
  echo $lb'['$lg'2'$lb']'$brw' Nuyul LTCClickBot'
  echo $lb'['$lg'3'$lb']'$brw' Nuyul BCHClickBot\n\n'
  echo -n $lr'Kadal'$w'-'$lr'15'$w':~'$lg' $ '
  read pil;
  if [ $pil = '1' ] || [ $pil = '01' ];
  then
      clear
      sh tunggu.sh
      sleep 0.5
      clear
      sh banner.sh
      cd doge
      echo 'Masukkan No Anda\nExemple : +6285*********\n\n'
      echo -n $lr'Kadal'$w'-'$lr'15'$w':~'$lg' $ '
      read nuyul;
      sleep 0.2
      python main.py $nuyul
      exit

  elif [ $pil = '2' ] || [ $pil = '02' ];
  then
      clear
      sh tunggu.sh
      sleep 0.5
      clear
      sh banner.sh
      cd ltc
      echo 'Masukkan No Anda\nExemple : +6285*********\n\n'
      echo -n $lr'Kadal'$w'-'$lr'15'$w':~'$lg' $ '
      read nuyul1;
      sleep 0.1
      python main.py $nuyul1
      exit

  elif [ $pil = '3' ] || [ $pil = '03' ];
  then
      clear
      sh tunggu.sh
      sleep 0.5
      clear
      sh banner.sh
      cd bch
      echo 'Masukkan No Anda\nExemple : +6285*********\n\n'
      echo -n $lr'Kadal'$w'-'$lr'15'$w':~'$lg' $ '
      read nuyul2;
      sleep 0.1
      python main.py $nuyul2
      exit

  else
      echo 'ERROR : Wrong Input'
      sleep 2
      echo $ulang;
  fi
done
