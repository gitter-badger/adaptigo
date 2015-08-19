#!/bin/bash

scheduler="noop"

# Based on: https://wiki.archlinux.org/index.php/Solid_State_Drives
cat <<EOF | tee "/etc/udev/rules.d/60-io_schedulers.rules" > /dev/null 2>&1
# Set noop scheduler for non-rotating disks
ACTION=="add|change", KERNEL=="sd[a-z]", ATTR{queue/rotational}=="0", ATTR{queue/scheduler}="$scheduler"
# Set deadline scheduler for rotating disks
ACTION=="add|change", KERNEL=="sd[a-z]", ATTR{queue/rotational}=="1", ATTR{queue/scheduler}="deadline"
EOF

for disk in `\ls -d /sys/block/sd*`; do
    rot="$disk/queue/rotational"
    sched="$disk/queue/scheduler"

    if [[ `cat $rot` -eq 0 ]]; then
        echo $scheduler | tee $sched > /dev/null 2>&1
    fi
done
