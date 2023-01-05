#!/bin/bash

harfNotu()
{
 if [ $1 -ge 90 ]
 then zenity --info --text="Harf notunuz AA" --width=340
 elif [ $1 -ge 80 -a $1 -lt 90 ]
 then zenity --info --text="Harf notunuz BA" --width=340 
 elif [ $1 -ge 70 -a $1 -lt 80 ]
 then zenity --info --text="Harf notunuz BB" --width=340
 elif [ $1 -ge 60 -a $1 -lt 70 ]
 then zenity --info --text="Harf notunuz CB" --width=340
 elif [ $1 -ge 50 -a $1 -lt 60 ]
 then zenity --info --text="Harf notunuz CC" --width=340
  elif [ $1 -ge 40 -a $1 -lt 50 ]
 then zenity --info --text="Harf notunuz DC" --width=340
 elif [ $1 -ge 35 -a $1 -lt 40 ]
 then zenity --info --text="Harf notunuz DD" --width=340
 else zenity --info --text="Harf notunuz FF" --width=340
 fi
}



zenity --info --title="Harf Notu Hesaplama" --text="Vize %40 Final %60 etkilemektedir.\n\nHarf Notları\n\nAA 90-100\nBA 80-89 \
\nBB 70-79\nCB 60-69\nCC 50-59\nDC 40-49\nDD 35-39\nFF 0-35" --width=400 --height=300


vize=`zenity --entry --text="Vize notunuzu girin" --title="Vize" --width=300`

if [ $? -ne 0 ]
then zenity --warning --text="İptal edildi!!" --width=340
else
 final=`zenity --entry --text="Final notunuzu girin" --title="Final" --width=300`

 if [ $? -ne 0 ]
 then zenity --warning --text="İptal edildi!!" --width=340
 else
  vizeOrt=`expr $vize \* 40  / 100`
  finalOrt=`expr $final \* 60 / 100`
  sonuc=`expr $vizeOrt + $finalOrt`
  harfNotu $sonuc
 fi
fi


#echo $vize $final

#echo $vizeOrt $finalOrt

#echo $sonuc
