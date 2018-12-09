#!/bin/bash
SERVICE=$1
TASK=$2
ps -ef | grep -v grep | grep $SERVICE > /dev/null
retcode=$?
if [[ "${retcode}" -eq "0" ]]; then
	echo "$SERVICE is running"
else
	echo  "$SERVICE is not running"
fi

case "${TASK}" in 
	start) echo " starting $SERVICE "
	       sudo systemctl start $SERVICE ; ;;
	stop)  echo " Stoping $SERVICE "
	       sudo systemctl stop $SERVICE ; ;;
	status) echo " Checking $SERVICE status "
	        sudo systemctl status $SERVICE ; ;;
	restart) echo " Restarting $SERVICE "
	         sudo systemctl restart $SERVICE ; ;;
esac
