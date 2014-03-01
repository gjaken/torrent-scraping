#!/bin/bash

# torrent_scraper.sh
# returns all TCP ports (as numeric), then  returns non-"LISTEN" qbittorrent
activeProcess=$(netstat -atpn 2>/dev/null | grep qbit | grep -v LISTEN | wc -l)

while [ $activeProcess -gt 0 ]
do
	# output to file
	netstat -atpn | grep qbit >> torrent_data.txt
sleep 60 # 60 * 1
done

# our data will give us all IPs that we, at some point, have downloaded from (only from seeds, not from peers (find out out why))


