#!/bin/bash

read -p "enter the threshold limit of disk space:" disk

space=`df -h .|tail -1|awk -F " " '{print $5}'|sed 's/%//g'`
	if [ $space -ge $disk ]
		then
	echo "The disk storage is almost full, Please take the action|mail -s "Disk m/m full" -c "devops.com" team_devops.com"
else
	remaining=$((100 - $space))
	echo "disk space is still $remaining% you can enjoy "
	fi

