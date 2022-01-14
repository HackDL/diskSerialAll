for num in `lsscsi | grep /dev/sd. | awk '{print $6}'`;do echo $num;echo `sudo smartctl -a $num | grep Serial`; done;
