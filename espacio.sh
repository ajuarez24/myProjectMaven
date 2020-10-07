#!/bin/bash
used=`df -h | grep sda1 | awk {'print $5'}`
used=${used/\%/}
if [ $used -gt 75 ];
then
echo "WARNING! Espacio disponible menos del 25%. El espacio utilizado = $used"% | mail -s "DISK ALERT" ajuarez@sel.gfi.es
fi
