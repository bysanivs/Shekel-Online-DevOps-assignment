
#Script to check service status
./checkService.sh SERVICENAME TASK
TASK=start|stop|status|restart

#runservice is a script, we can use to check for a service and start it if it is not running and to make it run always we can add it to crontab as below format

#crontab -e
* * * * * /usr/scripts/runservice.sh servicename >> /usr/logs/runservice.log

