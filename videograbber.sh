#!/bin/bash
 
echo "by CRX"
for i in `seq 1 20928`; #20928 is the maximum number of all video pages ... i think today there will be some more!
        do
echo -e "CRX IS DA FUCKIN \033[31mPoRnO\033[0m. KING"
wget -O - http://de.xhamster.com/new/$i.html |   grep -o '<a href=['"'"'"][^"'"'"']*['"'"'"]' | grep -o '<a href=['"'"'"][^"'"'"']*['"'"'"]' | sed -e 's/^<a href=["'"'"']//' -e 's/["'"'"']$//' | grep http://de.xhamster.com/movies/ >> listeallmain.txt
done
./youtube-dl -c --title --batch-file='listeallmain.txt'
