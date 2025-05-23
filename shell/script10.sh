#!/bin/bash
services="apache2 Nginx Mysql"
for i in $services
do
	sudo service $i status
	if [ $? -ne 0 ]
then
	echo "service $i is not running, Please take the action"|mail -s "Service stopped!!" -c "test.com" group.com
	fi
done
