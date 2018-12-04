#!/bin/bash -x
rm -rf ~/.ssh/known_hosts
for i in {2..20}
do
    ping -c 1 10.85.224.$i
    if [ $? -eq 0 ]; then
        ./.ssh_copy_id.sh root@10.85.224.$i
    fi
done
for i in {2..20}
do
    ping -c 1 10.85.216.$i
    if [ $? -eq 0 ]; then
        ./.ssh_copy_id.sh root@10.85.216.$i
    fi
done
