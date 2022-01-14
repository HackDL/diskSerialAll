for num in `lsscsi | grep /dev/sd. | awk '{print $6}'| sort | grep ^/`;do echo $num;echo `sudo smartctl -a $num | grep -E "Serial|Device Model|Product"`; done;
