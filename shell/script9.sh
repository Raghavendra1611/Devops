#!/bin/bash
read -p "enter the threshold limit of disk space:" disk
space=`df -h .|tail -1|awk -F " " '{print $5}'|sed 's/%//g'`
	if [ $space -ge $disk ]
		then
	echo "The disk storage exceeding threshold, Please take the action|mail -s "Disk m/m full" -c "devops.com" team_devops.com"
else
	remaining=$((100 - $space))
	echo "need not o worry, remaining disk space is $remaining%"
	fi
