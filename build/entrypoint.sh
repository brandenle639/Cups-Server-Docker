#!/bin/bash
if [ ! -f /etc/cups/cupsd.conf ]; then
   unzip /cups.zip -d /etc/cups
fi
if [[ ! "$pass" == "" ]]; then
   echo "cup:$pass" | sudo chpasswd
fi
if [[ ! "$port" == "" ]]; then
   ln=$(awk '/Listen \*\:/{ print NR; exit }' /etc/cups/cupsd.conf)
   sed -i -e  "$ln s/.*/Listen \*\:$port/" /etc/cups/cupsd.conf
fi
if [[ $# -lt 1 ]]; then
    cupsd
    bash
else
    $@
fi
