#!/bin/bash


# this file is about log all server in the list and then try to connect it 
header=$(speedtest-cli --secure --csv-header)
echo $header > speedtest-chotipat.csv
servers=$(speedtest-cli --list | awk -F ')' 'NR > 1 {print $1}')
for server in $servers
do
echo $(date) "Server ID: $server"
speedtest-cli --secure --server $server --csv >> speedtest-chotipat.csv
echo "Done"
done
