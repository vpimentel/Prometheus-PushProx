#/bin/sh
./app/pushprox-client --proxy-url=$(echo $PUSH_PROX_SERVER) --fqdn=$(ifconfig eth0 | grep 'inet addr' | cut -d: -f2 | awk '{print $1}'):9090 --job-name=$(echo $JOB_NAME)